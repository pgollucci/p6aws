######################################################################
#<
#
# Function: p6_aws_svc_alb_create(alb_name, [subnet_type=Public], [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	alb_name -
#	OPTIONAL subnet_type - [Public]
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_alb_create() {
    local alb_name="$1"
    local subnet_type="${2:-Public}"
    local vpc_id="${3:-$AWS_VPC_ID}"

    local subnet_ids=$(p6_aws_svc_ec2_subnet_ids_get "$subnet_type" "$vpc_id" | xargs)

    p6_aws_cli_cmd elbv2 create-load-balancer "$alb_name" "$subnet_ids"

    # XXX: tags

    # XXX :return
}

######################################################################
#<
#
# Function: p6_aws_svc_alb_listener_create(alb_arn, target_group_arn)
#
#  Args:
#	alb_arn -
#	target_group_arn -
#
#>
######################################################################
p6_aws_svc_alb_listener_create() {
    local alb_arn="$1"
    local target_group_arn="$2"

    local default_action_type=forward
    local protocol=HTTP
    local port=80

    p6_aws_cli_cmd elbv2 create-listener \
        "$alb_arn" \
        --protocol $protocol \
        --port $port \
        --default-actions Type=$default_action_type,TargetGroupArn=$target_group_arn
}

######################################################################
#<
#
# Function: p6_aws_svc_alb_target_group_create(tg_name, [vpc_id=AWS_VPC_ID])
#
#  Args:
#	tg_name -
#	OPTIONAL vpc_id - [AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_alb_target_group_create() {
    local tg_name="$1"
    local vpc_id="${2:-AWS_VPC_ID}"

    if [ -n "$vpc_id" ]; then
        vpc_id="--vpc-id $vpc_id"
    else
        # lambda
        true
    fi

    local protocol=HTTP
    local port=80

    p6_aws_cli_cmd elbv2 create-target-group \
        "$name" \
        $vpc_id \
        --protocol $protocol \
        --port $port
}
