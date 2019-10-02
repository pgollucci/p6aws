######################################################################
#<
#
# Function:
#	p6_aws_dms_replication_instance_reboot(replication_instance_arn)
#
#  Args:
#	replication_instance_arn - 
#
#>
######################################################################
p6_aws_dms_replication_instance_reboot() {
    local replication_instance_arn="$1"
    shift 1

    p6_run_write_cmd aws dms reboot-replication-instance --replication-instance-arn $replication_instance_arn "$@"
}