######################################################################
#<
#
# Function:
#      = p6_aws_xray_trace_summaries_get(start_time, end_time)
#
# Arg(s):
#    start_time - 
#    end_time - 
#
#
#>
######################################################################
p6_aws_xray_trace_summaries_get() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_run_read_cmd aws xray get-trace-summaries --start-time $start_time --end-time $end_time "$@"
}