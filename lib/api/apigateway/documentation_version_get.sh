######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_documentation_version_get(rest_api_id, documentation_version)
#
# Arg(s):
#    rest_api_id - 
#    documentation_version - 
#
#
#>
######################################################################
p6_aws_apigateway_documentation_version_get() {
    local rest_api_id="$1"
    local documentation_version="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-documentation-version --rest-api-id $rest_api_id --documentation-version $documentation_version "$@"
}