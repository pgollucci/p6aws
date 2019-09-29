######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_resource_create(rest_api_id, parent_id, path_part)
#
# Arg(s):
#    rest_api_id - 
#    parent_id - 
#    path_part - 
#
#
#>
######################################################################
p6_aws_apigateway_resource_create() {
    local rest_api_id="$1"
    local parent_id="$2"
    local path_part="$3"
    shift 3

    p6_run_write_cmd aws apigateway create-resource --rest-api-id $rest_api_id --parent-id $parent_id --path-part $path_part "$@"
}