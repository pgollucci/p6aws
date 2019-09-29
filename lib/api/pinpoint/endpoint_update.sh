######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_endpoint_update(application_id, endpoint_id, endpoint_request)
#
# Arg(s):
#    application_id - 
#    endpoint_id - 
#    endpoint_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_endpoint_update() {
    local application_id="$1"
    local endpoint_id="$2"
    local endpoint_request="$3"
    shift 3

    p6_run_write_cmd aws pinpoint update-endpoint --application-id $application_id --endpoint-id $endpoint_id --endpoint-request $endpoint_request "$@"
}