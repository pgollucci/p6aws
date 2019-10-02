######################################################################
#<
#
# Function:
#	p6_aws_xray_trace_segments_put(trace_segment_documents)
#
#  Args:
#	trace_segment_documents - 
#
#>
######################################################################
p6_aws_xray_trace_segments_put() {
    local trace_segment_documents="$1"
    shift 1

    p6_run_write_cmd aws xray put-trace-segments --trace-segment-documents $trace_segment_documents "$@"
}