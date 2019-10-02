######################################################################
#<
#
# Function:
#	p6_aws_ec2_export_task_cancel(export_task_id)
#
#  Args:
#	export_task_id - 
#
#>
######################################################################
p6_aws_ec2_export_task_cancel() {
    local export_task_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 cancel-export-task --export-task-id $export_task_id "$@"
}