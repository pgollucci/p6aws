######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_segment_versions_get(application_id, segment_id)
#
#  Args:
#	application_id - 
#	segment_id - 
#
#>
######################################################################
p6_aws_pinpoint_segment_versions_get() {
    local application_id="$1"
    local segment_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-segment-versions --application-id $application_id --segment-id $segment_id "$@"
}