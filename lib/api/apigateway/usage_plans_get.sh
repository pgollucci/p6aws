######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plans_get()
#
#
#
#>
######################################################################
p6_aws_apigateway_usage_plans_get() {

    p6_run_read_cmd aws apigateway get-usage-plans "$@"
}