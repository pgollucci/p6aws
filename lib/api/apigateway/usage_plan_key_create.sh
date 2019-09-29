######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_usage_plan_key_create(usage_plan_id, key_id, key_type)
#
# Arg(s):
#    usage_plan_id - 
#    key_id - 
#    key_type - 
#
#
#>
######################################################################
p6_aws_apigateway_usage_plan_key_create() {
    local usage_plan_id="$1"
    local key_id="$2"
    local key_type="$3"
    shift 3

    p6_run_write_cmd aws apigateway create-usage-plan-key --usage-plan-id $usage_plan_id --key-id $key_id --key-type $key_type "$@"
}