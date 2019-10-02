######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_segment_delete(application_id, segment_id)
#
#  Args:
#	application_id - 
#	segment_id - 
#
#>
######################################################################
p6_aws_pinpoint_segment_delete() {
    local application_id="$1"
    local segment_id="$2"
    shift 2

    p6_run_write_cmd aws pinpoint delete-segment --application-id $application_id --segment-id $segment_id "$@"
}