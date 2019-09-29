######################################################################
#<
#
# Function:
#      = p6_aws_xray_trace_graph_get(trace_ids)
#
# Arg(s):
#    trace_ids - 
#
#
#>
######################################################################
p6_aws_xray_trace_graph_get() {
    local trace_ids="$1"
    shift 1

    p6_run_read_cmd aws xray get-trace-graph --trace-ids $trace_ids "$@"
}