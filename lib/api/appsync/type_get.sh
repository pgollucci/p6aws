######################################################################
#<
#
# Function:
#      = p6_aws_appsync_type_get(api_id, type_name, format)
#
# Arg(s):
#    api_id - 
#    type_name - 
#    format - 
#
#
#>
######################################################################
p6_aws_appsync_type_get() {
    local api_id="$1"
    local type_name="$2"
    local format="$3"
    shift 3

    p6_run_read_cmd aws appsync get-type --api-id $api_id --type-name $type_name --format $format "$@"
}