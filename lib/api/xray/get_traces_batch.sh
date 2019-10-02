######################################################################
#<
#
# Function:
#	p6_aws_xray_get_traces_batch(trace_ids)
#
#  Args:
#	trace_ids - 
#
#>
######################################################################
p6_aws_xray_get_traces_batch() {
    local trace_ids="$1"
    shift 1

    p6_run_read_cmd aws xray batch-get-traces --trace-ids $trace_ids "$@"
}