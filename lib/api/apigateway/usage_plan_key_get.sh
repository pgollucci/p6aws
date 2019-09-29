######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plan_key_get(usage_plan_id, key_id)
#
# Arg(s):
#    usage_plan_id - 
#    key_id - 
#
#
#>
######################################################################
p6_aws_apigateway_usage_plan_key_get() {
    local usage_plan_id="$1"
    local key_id="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-usage-plan-key --usage-plan-id $usage_plan_id --key-id $key_id "$@"
}