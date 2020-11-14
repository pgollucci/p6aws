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

  local instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "$tag")
  local ami_name=$(p6_aws_ec2_svc_ami_name_from_instance_id "$instance_id")
  local user=$(p6_aws_ec2_svc_user_from_ami_name "$ami_name")

  local cli
  local host
  if [ x"$type" = x"aws-p6" ]; then
    host=$tag
  elif [ x"$type" = x"aws-pub" ]; then
      host=$(p6_aws_ec2_svc_instance_public_ip "$instance_id")
  elif [ x"$type" = x"aws-bastion" ]; then
      local bastion_instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "bastion")
      bastion_host=$(p6_aws_ec2_svc_instance_public_ip "$bastion_instance_id")

      local bastion_ami_name=$(p6_aws_ec2_svc_ami_name_from_instance_id "$bastion_instance_id")
      local bastion_user=$(p6_aws_ec2_svc_user_from_ami_name "$bastion_ami_name")

      host=$(p6_aws_ec2_svc_instance_private_ip "$instance_id")

      cli="ssh -A -t $bastion_user@$bastion_host "
  else
      host=$(p6_aws_ec2_svc_instance_private_ip "$instance_id")
  fi

  cli="${cli}ssh $user@$host"

  echo p6_remote_ssh_do "$cli"
  p6_remote_ssh_do "$cli"
}