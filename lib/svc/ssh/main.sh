######################################################################
#<
#
# Function: p6_aws_ssh_svc_do(tag, type)
#
#  Args:
#	tag -
#	type -
#
#>
######################################################################
p6_aws_ssh_svc_do() {
  local tag="$1"
  local type="$2"

  local host
  local instance_id

  case $type in
  aws-p6)
    instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "$tag")

    cli="mssh $instance_id"
    ;;
  aws-pub)
    instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "$tag")

    cli="mssh $instance_id"
    ;;
  aws-priv)
    local ami_name
    local user
    ami_name=$(p6_aws_ec2_svc_ami_name_from_instance_id "$instance_id")
    user=$(p6_aws_ec2_svc_user_from_ami_name "$ami_name")

    host=$(p6_aws_ec2_svc_instance_private_ip "$instance_id")

    cli="ssh $user@$host"
    ;;
  aws-jump)
    #    cli="ssh -A -t $bastion_user@$bastion_host "
    ;;
  aws-bastion)
    instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "${tag:-Bastion}")
    ;;
  esac

  #  cli="${cli} ssh $user@$host"

  p6_remote_ssh_do "$cli"
}