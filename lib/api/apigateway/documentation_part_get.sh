######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_documentation_part_get(rest_api_id, documentation_part_id)
#
# Arg(s):
#    rest_api_id - 
#    documentation_part_id - 
#
#
#>
######################################################################
p6_aws_apigateway_documentation_part_get() {
    local rest_api_id="$1"
    local documentation_part_id="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-documentation-part --rest-api-id $rest_api_id --documentation-part-id $documentation_part_id "$@"
}