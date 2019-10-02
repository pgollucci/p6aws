######################################################################
#<
#
# Function:
#	p6_aws_connect_metric_data_get(instance_id, start_time, end_time, filters, historical_metrics)
#
#  Args:
#	instance_id - 
#	start_time - 
#	end_time - 
#	filters - 
#	historical_metrics - 
#
#>
######################################################################
p6_aws_connect_metric_data_get() {
    local instance_id="$1"
    local start_time="$2"
    local end_time="$3"
    local filters="$4"
    local historical_metrics="$5"
    shift 5

    p6_run_read_cmd aws connect get-metric-data --instance-id $instance_id --start-time $start_time --end-time $end_time --filters $filters --historical-metrics $historical_metrics "$@"
}