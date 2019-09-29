######################################################################
#<
#
# Function:
#      = p6_aws_logs_metric_filter_put(log_group_name, filter_name, filter_pattern, metric_transformations)
#
# Arg(s):
#    log_group_name - 
#    filter_name - 
#    filter_pattern - 
#    metric_transformations - 
#
#
#>
######################################################################
p6_aws_logs_metric_filter_put() {
    local log_group_name="$1"
    local filter_name="$2"
    local filter_pattern="$3"
    local metric_transformations="$4"
    shift 4

    p6_run_write_cmd aws logs put-metric-filter --log-group-name $log_group_name --filter-name $filter_name --filter-pattern $filter_pattern --metric-transformations $metric_transformations "$@"
}