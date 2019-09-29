######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plan_get(usage_plan_id)
#
# Arg(s):
#    usage_plan_id - 
#
#
#>
######################################################################
p6_aws_apigateway_usage_plan_get() {
    local usage_plan_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-usage-plan --usage-plan-id $usage_plan_id "$@"
}