######################################################################
#<
#
# Function:
#	p6_aws_apigateway_stage_delete(rest_api_id, stage_name)
#
#  Args:
#	rest_api_id - 
#	stage_name - 
#
#>
######################################################################
p6_aws_apigateway_stage_delete() {
    local rest_api_id="$1"
    local stage_name="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-stage --rest-api-id $rest_api_id --stage-name $stage_name "$@"
}