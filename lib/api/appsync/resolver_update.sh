######################################################################
#<
#
# Function:
#      = p6_aws_appsync_resolver_update(api_id, type_name, field_name, request_mapping_template)
#
# Arg(s):
#    api_id - 
#    type_name - 
#    field_name - 
#    request_mapping_template - 
#
#
#>
######################################################################
p6_aws_appsync_resolver_update() {
    local api_id="$1"
    local type_name="$2"
    local field_name="$3"
    local request_mapping_template="$4"
    shift 4

    p6_run_write_cmd aws appsync update-resolver --api-id $api_id --type-name $type_name --field-name $field_name --request-mapping-template $request_mapping_template "$@"
}