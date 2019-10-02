######################################################################
#<
#
# Function:
#	p6_aws_logs_retention_policy_put(log_group_name, retention_in_days)
#
#  Args:
#	log_group_name - 
#	retention_in_days - 
#
#>
######################################################################
p6_aws_logs_retention_policy_put() {
    local log_group_name="$1"
    local retention_in_days="$2"
    shift 2

    p6_run_write_cmd aws logs put-retention-policy --log-group-name $log_group_name --retention-in-days $retention_in_days "$@"
}