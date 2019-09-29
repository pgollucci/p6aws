######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_endpoints_batch_update(application_id, endpoint_batch_request)
#
# Arg(s):
#    application_id - 
#    endpoint_batch_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_endpoints_batch_update() {
    local application_id="$1"
    local endpoint_batch_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint update-endpoints-batch --application-id $application_id --endpoint-batch-request $endpoint_batch_request "$@"
}