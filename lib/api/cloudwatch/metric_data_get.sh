######################################################################
#<
#
# Function:
#	p6_aws_cloudwatch_metric_data_get(metric_data_queries, start_time, end_time)
#
#  Args:
#	metric_data_queries - 
#	start_time - 
#	end_time - 
#
#>
######################################################################
p6_aws_cloudwatch_metric_data_get() {
    local metric_data_queries="$1"
    local start_time="$2"
    local end_time="$3"
    shift 3

    p6_run_read_cmd aws cloudwatch get-metric-data --metric-data-queries $metric_data_queries --start-time $start_time --end-time $end_time "$@"
}