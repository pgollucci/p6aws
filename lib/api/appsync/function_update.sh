######################################################################
#<
#
# Function:
#	p6_aws_appsync_function_update(api_id, name, function_id, data_source_name, request_mapping_template, function_version)
#
#  Args:
#	api_id - 
#	name - 
#	function_id - 
#	data_source_name - 
#	request_mapping_template - 
#	function_version - 
#
#>
######################################################################
p6_aws_appsync_function_update() {
    local api_id="$1"
    local name="$2"
    local function_id="$3"
    local data_source_name="$4"
    local request_mapping_template="$5"
    local function_version="$6"
    shift 6

    p6_run_write_cmd aws appsync update-function --api-id $api_id --name $name --function-id $function_id --data-source-name $data_source_name --request-mapping-template $request_mapping_template --function-version $function_version "$@"
}