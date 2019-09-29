######################################################################
#<
#
# Function:
#      = p6_aws_logs_log_streams_describe(log_group_name)
#
# Arg(s):
#    log_group_name - 
#
#
#>
######################################################################
p6_aws_logs_log_streams_describe() {
    local log_group_name="$1"
    shift 1

    p6_run_read_cmd aws logs describe-log-streams --log-group-name $log_group_name "$@"
}