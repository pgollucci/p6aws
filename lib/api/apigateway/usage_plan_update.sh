######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plan_update(usage_plan_id)
#
# Arg(s):
#    usage_plan_id - 
#
#
#>
######################################################################
p6_aws_apigateway_usage_plan_update() {
    local usage_plan_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-usage-plan --usage-plan-id $usage_plan_id "$@"
}