p6_aws_ssh_svc_do() {
  local tag="$1"
  local type="$2"

  local instance_id=$(p6_aws_ec2_svc_instance_id_from_name_tag "$tag")
  local ami_name=$(p6_aws_ec2_svc_ami_name_from_instance_id "$instance_id")

  local host
  if [ x"$type" = x"aws-pub" ]; then
      host=$tag
  else
      host=$(p6_aws_ec2_svc_private_ip "$instance_id")
  fi
  local user=$(p6_aws_ec2_svc_user_from_ami_name "$ami_name")

  p6_remote_ssh_do "$user@$host"
}
