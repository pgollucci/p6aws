######################################################################
#<
#
# Function:
#	p6_aws_ec2_conversion_task_cancel(conversion_task_id)
#
#  Args:
#	conversion_task_id - 
#
#>
######################################################################
p6_aws_ec2_conversion_task_cancel() {
    local conversion_task_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 cancel-conversion-task --conversion-task-id $conversion_task_id "$@"
}