######################################################################
#<
#
# Function:
#	p6_aws_ec2_svc_sg_delete(group_name)
#
#  Args:
#	group_name - 
#
#>
######################################################################
p6_aws_ec2_svc_sg_delete() {
    local group_name="$1"

    local sg_id=$(p6_aws_ec2_svc_sg_id_from_group_name "$group_name")

    p6_aws_ec2_security_group_delete --group-id $sg_id
}

######################################################################
#<
#
# Function:
#	unkown sg_id = p6_aws_ec2_svc_sg_create(desc, tag_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	desc - 
#	tag_name - 
#	OPTIONAL vpc_id -  [$AWS_VPC]
#
#  Returns:
#	unkown - sg_id
#
#>
######################################################################
p6_aws_ec2_svc_sg_create() {
    local desc="$1"
    local tag_name="$2"
    local vpc_id=${3:-$AWS_VPC}

    local group_name=$tag_name
    local sg_id=$(p6_aws_ec2_security_group_create "'$desc'" "'$group_name'" --vpc-id $vpc_id --output text)

    p6_aws_ec2_tags_create "$sg_id" "'Key=Name,Value=$tag_name'"

    p6_return "$sg_id"
}

######################################################################
#<
#
# Function:
#	p6_aws_ec2_svc_sgs_list([vpc_id=$AWS_VPC])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC]
#
#>
######################################################################
p6_aws_ec2_svc_sgs_list() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_security_groups_describe \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'SecurityGroups[].[GroupId, GroupName, $P6_AWS_JQ_TAG_NAME]'"
}

######################################################################
#<
#
# Function:
#	p6_aws_ec2_svc_sg_show(security_group_id_or_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	security_group_id_or_name - 
#	OPTIONAL vpc_id -  [$AWS_VPC]
#
#>
######################################################################
p6_aws_ec2_svc_sg_show() {
    local security_group_id_or_name="$1"
    local vpc_id="${2:-$AWS_VPC}"

    local security_group_id
    local group_name

    case $security_group_id_or_name in
	sg-*) security_group_id=$security_group_id_or_name ;;
	*) group_name=$security_group_id_or_name ;;
    esac

    if [ -n "$group_name" ]; then
	security_group_id=$(p6_aws_ec2_svc_sg_id_from_tag_name "$group_name")
    fi

    sg_show.pl --security-group-id $security_group_id
}

######################################################################
#<
#
# Function:
#	p6_aws_ec2_svc_sg_id_from_tag_name(tag_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	tag_name - 
#	OPTIONAL vpc_id -  [$AWS_VPC]
#
#>
######################################################################
p6_aws_ec2_svc_sg_id_from_tag_name() {
    local tag_name="$1"
    local vpc_id="${2:-$AWS_VPC}"

    p6_aws_ec2_security_groups_describe \
	--output text \
	--filters "'Name=tag:Name,Values=$tag_name,Name=vpc-id,Values=$vpc_id'" \
	--query "'SecurityGroups[].[GroupId]'" | \
	tail -1
}

## DEPRECATED -- use tags
######################################################################
#<
#
# Function:
#	p6_old_aws_ec2_svc_sg_id_from_group_name(group_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	group_name - 
#	OPTIONAL vpc_id -  [$AWS_VPC]
#
#>
######################################################################
p6_old_aws_ec2_svc_sg_id_from_group_name() {
    local group_name="$1"
    local vpc_id="${2:-$AWS_VPC}"

    p6_aws_ec2_security_groups_describe \
	--output text \
	--filters "Name=group-name,Values=$group_name,Name=vpc-id,Values=$vpc_id" \
	--query "'SecurityGroups[].[GroupId]'"
}