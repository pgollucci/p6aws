######################################################################
#<
#
# Function:
#	p6_aws_xray_service_graph_get(start_time, end_time)
#
#  Args:
#	start_time - 
#	end_time - 
#
#>
######################################################################
p6_aws_xray_service_graph_get() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_run_read_cmd aws xray get-service-graph --start-time $start_time --end-time $end_time "$@"
}