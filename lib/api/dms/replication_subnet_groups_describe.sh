######################################################################
#<
#
# Function:
#      = p6_aws_dms_replication_subnet_groups_describe()
#
#
#
#>
######################################################################
p6_aws_dms_replication_subnet_groups_describe() {

    p6_run_read_cmd aws dms describe-replication-subnet-groups "$@"
}