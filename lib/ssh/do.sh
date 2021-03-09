######################################################################
#<
#
# Function: p6_aws_svc_ssh_do(tag, type)
#
#  Args:
#	tag -
#	type -
#
#>
######################################################################
p6_aws_svc_ssh_do() {
  local tag="$1"
  local type="$2"

  case $type in
  aws-pub)
    local instance_id
    instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "$tag")

    cli="mssh $instance_id"
    ;;
  aws-jump*)
    local bastion_instance_id
    local bastion_host
    local bastion_ami_name
    local bastion_user
    bastion_instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "Bastion")
    bastion_host=$(p6_aws_svc_ec2_instance_public_ip "$bastion_instance_id")
    bastion_ami_name=$(p6_aws_svc_ec2_ami_name_from_instance_id "$bastion_instance_id")
    bastion_user=$(p6_aws_svc_ec2_user_from_ami_name "$bastion_ami_name")

    local instance_id
    local host
    instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "$tag")
    host=$(p6_aws_svc_ec2_instance_private_ip "$instance_id")

    local rcli
    local cli
    rcli="ssh -t -i .ssh/private-bastion.pem $host"
    cli="ssh -t $bastion_user@$bastion_host \"$rcli\""
    ;;
  aws-priv)
    local instance_id
    instance_id=$(p6_aws_svc_ec2_instance_id_from_name_tag "$tag")
    local host
    host=$(p6_aws_svc_ec2_instance_private_ip "$instance_id")

    cli="mssh $host"
    ;;
  esac

  p6_msg "$cli"
  p6_remote_ssh_do "$cli"
}