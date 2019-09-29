######################################################################
#<
#
# Function:
#      = p6_aws_iot_thing_registration_task_describe(task_id)
#
# Arg(s):
#    task_id - 
#
#
#>
######################################################################
p6_aws_iot_thing_registration_task_describe() {
    local task_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-thing-registration-task --task-id $task_id "$@"
}