######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_instance_delete(replication_instance_arn)
#
# Arg(s):
#    replication_instance_arn - 
#
#
#>
######################################################################
p6_aws_dms_replication_instance_delete() {
    local replication_instance_arn="$1"
    shift 1

    p6_run_write_cmd aws dms delete-replication-instance --replication-instance-arn $replication_instance_arn "$@"
}