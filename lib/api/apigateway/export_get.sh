######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_export_get(rest_api_id, stage_name, export_type)
#
# Arg(s):
#    rest_api_id - 
#    stage_name - 
#    export_type - 
#
#
#>
######################################################################
p6_aws_apigateway_export_get() {
    local rest_api_id="$1"
    local stage_name="$2"
    local export_type="$3"
    shift 3

    p6_run_read_cmd aws apigateway get-export --rest-api-id $rest_api_id --stage-name $stage_name --export-type $export_type "$@"
}