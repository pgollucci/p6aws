######################################################################
#<
#
# Function:
#	p6_aws_apigateway_usage_update(usage_plan_id, key_id)
#
#  Args:
#	usage_plan_id - 
#	key_id - 
#
#>
######################################################################
p6_aws_apigateway_usage_update() {
    local usage_plan_id="$1"
    local key_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway update-usage --usage-plan-id $usage_plan_id --key-id $key_id "$@"
}