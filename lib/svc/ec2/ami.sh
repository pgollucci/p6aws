######################################################################
#<
#
# Function: str user = p6_aws_ec2_svc_user_from_ami_name(ami_name)
#
#  Args:
#	ami_name - 
#
#  Returns:
#	str - user
#
#>
######################################################################
p6_aws_ec2_svc_user_from_ami_name() {
    local ami_name="$1"

    local user
    case $ami_name in
	*WIN*)         user=lanadmin ;;
	*RHEL*|*AmaonLinux*|*amzn*-ami*|*FreeBSD*) user=ec2-user ;;
	*Ubuntu*)      user=ubuntu   ;;
	*core*)        user=core     ;;
	*)             user=$USER    ;;
    esac

    p6_return_str "$user"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_ec2_svc_ami_id_from_instance_id(instance_id)
#
#  Args:
#	instance_id - 
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_ec2_svc_ami_id_from_instance_id() {
    local instance_id="$1"

    local ami_id=$(p6_aws_cmd ec2 describe-instances \
			      --output text \
			      --instance-ids $instance_id \
			      --query "'Reservations[0].Instances[0].ImageId'")

    p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_name = p6_aws_ec2_svc_ami_name_from_instance_id(instance_id)
#
#  Args:
#	instance_id - 
#
#  Returns:
#	str - ami_name
#
#>
######################################################################
p6_aws_ec2_svc_ami_name_from_instance_id() {
    local instance_id="$1"

    local ami_id=$(p6_aws_ec2_svc_ami_id_from_instance_id "$instance_id")

    local ami_name=$(p6_aws_cmd ec2 describe-images \
				--output text \
				--image-ids $ami_id \
				--query "'Images[0].Name'")

    p6_return_str "$ami_name"
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_amis_mine_list()
#
#>
######################################################################
p6_aws_ec2_svc_amis_mine_list() {

    p6_aws_cmd ec2 describ-images \
	--output text \
	--owners self \
	--query "'Images[].[CreationDate, ImageId, Public, RootDeviceName, RootDeviceType, VirtualizationType, ImageLocation, $P6_AWS_JQ_TAG_NAME]'" | \
	sort -k 2
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_amis_list()
#
#>
######################################################################
p6_aws_ec2_svc_amis_list() {

    p6_aws_cmd ec2 describe-images \
	--output text \
	--query "'Images[].[CreationDate, ImageId, Public, RootDeviceName, RootDeviceType, VirtualizationType, ImageLocation, $P6_AWS_JQ_TAG_NAME]'" | \
	sort -k 2
}

######################################################################
#<
#
# Function: words ami_ids = p6_aws_ec2_svc_ami_find_id(glob)
#
#  Args:
#	glob - 
#
#  Returns:
#	words - ami_ids
#
#>
######################################################################
p6_aws_ec2_svc_ami_find_id() {
    local glob="$1"

    local ami_ids=$(p6_aws_cmd ec2 describe-images \
			       --output text \
			       --filters "'Name=name,Values=$glob'" \
			       --query "Images[*].[Name,ImageId]" | \
			sort -k 1,1 | \
			tail -1 | \
			awk '{ print $2 }')

    p6_return_words "$ami_ids"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_ec2_svc_amis_freebsd12_latest()
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_ec2_svc_amis_freebsd12_latest() {

    local ami_id=$(p6_aws_cmd ec2 describe-images \
			      --output text \
			      --query "'Images[].[ImageId]'" \
			      --filters "'Name=name,Values=*FreeBSD 12*-RELEASE*ZFS'" \
		       | head -1)

    p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_ec2_svc_amis_amazon2_latest()
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_ec2_svc_amis_amazon2_latest() {

    local ami_id=$(p6_aws_cmd ec2 describe-images \
			      --output text \
			      --query "'Images[].[ImageId]" \
			      --filters "Name=name,Values=amzn2-ami-hvm-2.0.2019*x86_64*gp2" | \
		       sort -r -k 1,1 | \
		       head -1 | \
		       awk '{print $2}')

    p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_ec2_svc_amis_rhel8_latest()
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_ec2_svc_amis_rhel8_latest() {

    local ami_id=$(p6_aws_cmd ec2 describe-images \
			      --output text \
			      --query "'Images[].[ImageId]" \
			      --filters "Name=name,Values=RHEL-8*HVM-2019*x86_64*" | \
		       sort -r -k 1,1 | \
		       head -1 | \
		       awk '{print $2}')

    p6_return_str "$ami_id"
}

######################################################################
#<
#
# Function: str ami_id = p6_aws_ec2_svc_amis_ubuntu18_latest()
#
#  Returns:
#	str - ami_id
#
#>
######################################################################
p6_aws_ec2_svc_amis_ubuntu18_latest() {


    local ami_id=$(p6_aws_cmd ec2 describe-images \
			      --output text \
			      --query "'Images[].[ImageId]" \
			      --filters "Name=name,Values=ubuntu-*-18.1*amd64*" \
			      sort -r -k 1,1 | \
		       head -1 | \
		       awk '{print $2}')

    p6_return_str "$ami_id"
}