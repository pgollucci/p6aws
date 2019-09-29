######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_segment_create(application_id, write_segment_request)
#
# Arg(s):
#    application_id - 
#    write_segment_request - 
#
#
#>
######################################################################
p6_aws_pinpoint_segment_create() {
    local application_id="$1"
    local write_segment_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint create-segment --application-id $application_id --write-segment-request $write_segment_request "$@"
}