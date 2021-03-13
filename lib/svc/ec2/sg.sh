# shellcheck shell=sh
######################################################################
#<
#
# Function: p6_aws_svc_ec2_sg_delete(group_name)
#
#  Args:
#	group_name -
#
#>
######################################################################
p6_aws_svc_ec2_sg_delete() {
    local group_name="$1"

    local sg_id
    sg_id=$(p6_aws_svc_ec2_sg_id_from_group_name "$group_name")

    p6_aws_cli_cmd ec2 delete-security-group --group-id "$sg_id"
}

######################################################################
#<
#
# Function: str sg_id = p6_aws_svc_ec2_sg_create(desc, tag_name, [vpc_id=$AWS_VPC])
#
#  Args:
#	desc -
#	tag_name -
#	OPTIONAL vpc_id - [$AWS_VPC]
#
#  Returns:
#	str - sg_id
#
#>
######################################################################
p6_aws_svc_ec2_sg_create() {
    local desc="$1"
    local tag_name="$2"
    local vpc_id=${3:-$AWS_VPC}

    local group_name=$tag_name
    local sg_id
    sg_id=$(p6_aws_cli_cmd ec2 create-security-group "'$desc'" "'$group_name'" --vpc-id "$vpc_id" --output text)

    p6_aws_cli_cmd ec2 create-tags "$sg_id" "'Key=Name,Value=$tag_name'"

    p6_return_str "$sg_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_sgs_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_sgs_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-security-groups \
        --output text \
        --filters "Name=vpc-id,Values=$vpc_id" \
        --query "'SecurityGroups[].[GroupId, GroupName, $tag_name]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_sg_show(security_group_id_or_name, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	security_group_id_or_name -
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_sg_show() {
    local security_group_id_or_name="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local security_group_id
    local group_name

    case $security_group_id_or_name in
    sg-*) security_group_id=$security_group_id_or_name ;;
    *) group_name=$security_group_id_or_name ;;
    esac

    if [ -n "$group_name" ]; then
        security_group_id=$(p6_aws_svc_ec2_sg_id_from_tag_name "$group_name")
    fi

    sg_show.pl --security-group-id "$security_group_id"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_sg_id_from_tag_name(tag_name, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	tag_name -
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_sg_id_from_tag_name() {
    local tag_name="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    p6_aws_cli_cmd ec2 describe-security-group \
        --output text \
        --filters "'Name=tag:Name,Values=$tag_name,Name=vpc-id,Values=$vpc_id'" \
        --query "'SecurityGroups[].[GroupId]'" |
        tail -1
}

## DEPRECATED -- use tags
######################################################################
#<
#
# Function: p6_old_aws_svc_ec2_sg_id_from_group_name(group_name, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	group_name -
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_old_aws_svc_ec2_sg_id_from_group_name() {
    local group_name="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    p6_aws_cli_cmd ec2 describe-security-groups \
        --output text \
        --filters "Name=group-name,Values=$group_name,Name=vpc-id,Values=$vpc_id" \
        --query "'SecurityGroups[].[GroupId]'"
}