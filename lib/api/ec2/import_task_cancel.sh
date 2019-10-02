######################################################################
#<
#
# Function:
#	p6_aws_ec2_import_task_cancel()
#
#>
######################################################################
p6_aws_ec2_import_task_cancel() {

    p6_run_write_cmd aws ec2 cancel-import-task "$@"
}