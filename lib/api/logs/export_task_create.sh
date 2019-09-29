######################################################################
#<
#
# Function:
#      = p6_aws_logs_export_task_create(log_group_name, from, to, destination)
#
# Arg(s):
#    log_group_name - 
#    from - 
#    to - 
#    destination - 
#
#
#>
######################################################################
p6_aws_logs_export_task_create() {
    local log_group_name="$1"
    local from="$2"
    local to="$3"
    local destination="$4"
    shift 4

    p6_run_write_cmd aws logs create-export-task --log-group-name $log_group_name --from $from --to $to --destination $destination "$@"
}