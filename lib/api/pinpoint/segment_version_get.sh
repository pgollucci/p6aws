######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_segment_version_get(application_id, segment_id, segment_version)
#
#  Args:
#	application_id - 
#	segment_id - 
#	segment_version - 
#
#>
######################################################################
p6_aws_pinpoint_segment_version_get() {
    local application_id="$1"
    local segment_id="$2"
    local segment_version="$3"
    shift 3

    p6_run_read_cmd aws pinpoint get-segment-version --application-id $application_id --segment-id $segment_id --segment-version $segment_version "$@"
}