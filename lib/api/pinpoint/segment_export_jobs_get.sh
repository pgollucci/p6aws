######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_segment_export_jobs_get(application_id, segment_id)
#
# Arg(s):
#    application_id - 
#    segment_id - 
#
#
#>
######################################################################
p6_aws_pinpoint_segment_export_jobs_get() {
    local application_id="$1"
    local segment_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-segment-export-jobs --application-id $application_id --segment-id $segment_id "$@"
}