######################################################################
#<
#
# Function:
#      = p6_aws_appsync_function_create(api_id, name, data_source_name, request_mapping_template, function_version)
#
# Arg(s):
#    api_id - 
#    name - 
#    data_source_name - 
#    request_mapping_template - 
#    function_version - 
#
#
#>
######################################################################
p6_aws_appsync_function_create() {
    local api_id="$1"
    local name="$2"
    local data_source_name="$3"
    local request_mapping_template="$4"
    local function_version="$5"
    shift 5

    p6_run_write_cmd aws appsync create-function --api-id $api_id --name $name --data-source-name $data_source_name --request-mapping-template $request_mapping_template --function-version $function_version "$@"
}