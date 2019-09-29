######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_endpoint_delete(application_id, endpoint_id)
#
# Arg(s):
#    application_id - 
#    endpoint_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_endpoint_delete() {
    local application_id="$1"
    local endpoint_id="$2"
    shift 2

    p6_run_write_cmd aws pinpoint delete-endpoint --application-id $application_id --endpoint-id $endpoint_id "$@"
}