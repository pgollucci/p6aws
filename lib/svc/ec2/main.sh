p6_aws_ec2_svc_instance_id_from_name_tag() {
  local name="$1"

  p6_aws_ec2_instances_describe \
      --output text \
      --filters "\"Name=tag:Name,Values=*$name*\"" \
      --query "'Reservations[].Instances[].[LaunchTime,InstanceId]'" | \
      sort -n | awk '{ print $2 }' | tail -1
}

p6_aws_ec2_svc_private_ip() {
  local instance_id="$1"

  p6_aws_ec2_instances_describe \
      --instance-ids $instance_id \
      --query "'Reservations[0].Instances[0].PrivateIpAddress'"
}

p6_aws_ec2_svc_user_from_ami_name() {
    local ami_name="$1"

    local user
    case $ami_name in
	*WIN*)         user=lanadmin ;;
	*RHEL*)        user=ec2-user ;;
	*AmazonLinux*) user=ec2-user ;;
	*Ubuntu*)      user=ubuntu   ;;
	*core*)        user=core     ;;
	*)             user=$USER    ;;
    esac

    echo $user
}

p6_aws_ec2_svc_ami_id_from_instance_id() {
    local instance_id="$1"

    p6_aws_ec2_instances_describe \
	--output text \
	--instance-ids $instance_id \
	--query "'Reservations[0].Instances[0].ImageId'"
}

p6_aws_ec2_svc_ami_name_from_instance_id() {
  local instance_id="$1"

  local ami_id=$(p6_aws_ec2_svc_ami_id_from_instance_id "$instance_id")

  p6_aws_ec2_images_describe \
    --output text \
    --image-ids $ami_id \
    --query "Images[0].Name"
}

p6_aws_ec2_svc_sgs_list() {

  p6_aws_ec2_security_groups_describe \
    --output text \
    --query "'SecurityGroups[].[GroupId, VpcId, GroupName]'"
}

p6_aws_ec2_svc_instances_list() {

    p6_aws_ec2_instances_describe \
	--output text \
	--query "'Reservations[].Instances[].[InstanceId, ImageId, InstanceType, SubnetId, Placement.AvailabilityZone, NetworkInterfaces[0].PrivateIpAddress, KeyName, Tags[?Key==Name].Value | [0], IamInstanceProfile.Arn]'"
}

p6_aws_ec2_svc_eni_list() {

    p6_aws_ec2_network_interfaces_describe \
	 --output text \
	 --query "'NetworkInterfaces[].[NetworkInterfaceId, VpcId, SubnetId, AvailabilityZone, PrivateIpAddress, Status, Association.PublicIp, TagSet[0].Value]'"
}

p6_aws_ec2_svc_volumes_list() {

    p6_aws_ec2_volumes_describe \
	--output text \
	--query "'Volumes[].[VolumeId, Tags[?Key==`Name`].Value | [0], State, Size, AvailabilityZone]'"
}

p6_aws_ec2_svc_amis_list() {

    p6_aws_ec2_describe_images \
	--output text \
	--owners self \
	--query "'Images[*].[ImageId, Name, CreationDate]'" | \
	sort -k 2
}

p6_aws_ec2_svc_vpcs_list() {

    p6_aws_ec2_describe_vpcs \
	--output text \
	--filters "Name=isDefault,Values=false" \
	--query "'Vpcs[].[VpcId, Tags[?Key==`Name`].Value | [0], CidrBlock, State]'"
}

p6_aws_ec2_svc_subnets_list() {

    p6_aws_ec2_describe_subnets \
	--output text \
	--query "'Subnets[].[VpcId, SubnetId, AvailabilityZone, CidrBlock, AvailableIpAddressCount, Tags[?Key==`Name`].Value | [0]]'"
}
