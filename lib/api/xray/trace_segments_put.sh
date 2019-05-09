p6_aws_xray_trace_segments_put() {
    local trace_segment_documents="$1"
    shift 1

    p6_log_or_run aws xray put-trace-segments --trace-segment-documents $trace_segment_documents "$@"
}
