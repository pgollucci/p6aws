######################################################################
#<
#
# Function:
#      = p6_aws_logs_log_group_delete(log_group_name)
#
# Arg(s):
#    log_group_name - 
#
#
#>
######################################################################
p6_aws_logs_log_group_delete() {
    local log_group_name="$1"
    shift 1

    p6_run_write_cmd aws logs delete-log-group --log-group-name $log_group_name "$@"
}