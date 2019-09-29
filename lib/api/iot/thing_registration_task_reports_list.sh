######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_registration_task_reports_list(task_id, report_type)
#
# Arg(s):
#    task_id - 
#    report_type - 
#
#
#>
######################################################################
p6_aws_iot_thing_registration_task_reports_list() {
    local task_id="$1"
    local report_type="$2"
    shift 2

    p6_run_read_cmd aws iot list-thing-registration-task-reports --task-id $task_id --report-type $report_type "$@"
}