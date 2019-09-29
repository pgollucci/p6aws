######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_stage_cache_flush(rest_api_id, stage_name)
#
# Arg(s):
#    rest_api_id - 
#    stage_name - 
#
#
#>
######################################################################
p6_aws_apigateway_stage_cache_flush() {
    local rest_api_id="$1"
    local stage_name="$2"
    shift 2

    p6_run_write_cmd aws apigateway flush-stage-cache --rest-api-id $rest_api_id --stage-name $stage_name "$@"
}