######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_segment_update(application_id, segment_id, write_segment_request)
#
#  Args:
#	application_id - 
#	segment_id - 
#	write_segment_request - 
#
#>
######################################################################
p6_aws_pinpoint_segment_update() {
    local application_id="$1"
    local segment_id="$2"
    local write_segment_request="$3"
    shift 3

    p6_run_write_cmd aws pinpoint update-segment --application-id $application_id --segment-id $segment_id --write-segment-request $write_segment_request "$@"
}