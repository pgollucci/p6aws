######################################################################
#<
#
# Function:
#	p6_aws_logs_metric_filters_describe()
#
#>
######################################################################
p6_aws_logs_metric_filters_describe() {

    p6_run_read_cmd aws logs describe-metric-filters "$@"
}