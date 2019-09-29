######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_documentation_version_create(rest_api_id, documentation_version)
#
# Arg(s):
#    rest_api_id - 
#    documentation_version - 
#
#
#>
######################################################################
p6_aws_apigateway_documentation_version_create() {
    local rest_api_id="$1"
    local documentation_version="$2"
    shift 2

    p6_run_write_cmd aws apigateway create-documentation-version --rest-api-id $rest_api_id --documentation-version $documentation_version "$@"
}