######################################################################
#<
#
# Function:
#	p6_aws_ec2_bundle_task_cancel(bundle_id)
#
#  Args:
#	bundle_id - 
#
#>
######################################################################
p6_aws_ec2_bundle_task_cancel() {
    local bundle_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 cancel-bundle-task --bundle-id $bundle_id "$@"
}