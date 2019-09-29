######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plan_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_apigateway_usage_plan_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws apigateway create-usage-plan --name $name "$@"
}