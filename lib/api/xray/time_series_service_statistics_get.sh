######################################################################
#<
#
# Function:
#	p6_aws_xray_time_series_service_statistics_get(start_time, end_time)
#
#  Args:
#	start_time - 
#	end_time - 
#
#>
######################################################################
p6_aws_xray_time_series_service_statistics_get() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_run_read_cmd aws xray get-time-series-service-statistics --start-time $start_time --end-time $end_time "$@"
}