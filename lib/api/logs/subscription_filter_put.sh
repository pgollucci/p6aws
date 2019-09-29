######################################################################
#<
#
# Function:
#      = p6_aws_logs_subscription_filter_put(log_group_name, filter_name, filter_pattern, destination_arn)
#
# Arg(s):
#    log_group_name - 
#    filter_name - 
#    filter_pattern - 
#    destination_arn - 
#
#
#>
######################################################################
p6_aws_logs_subscription_filter_put() {
    local log_group_name="$1"
    local filter_name="$2"
    local filter_pattern="$3"
    local destination_arn="$4"
    shift 4

    p6_run_write_cmd aws logs put-subscription-filter --log-group-name $log_group_name --filter-name $filter_name --filter-pattern $filter_pattern --destination-arn $destination_arn "$@"
}