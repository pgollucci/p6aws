######################################################################
#<
#
# Function:
#      = p6_aws_dms_orderable_replication_instances_describe()
#
#
#
#>
######################################################################
p6_aws_dms_orderable_replication_instances_describe() {

    p6_run_read_cmd aws dms describe-orderable-replication-instances "$@"
}