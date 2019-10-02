######################################################################
#<
#
# Function:
#	p6_aws_rds_read_replica_promote(db_instance_identifier)
#
#  Args:
#	db_instance_identifier - 
#
#>
######################################################################
p6_aws_rds_read_replica_promote() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds promote-read-replica --db-instance-identifier $db_instance_identifier "$@"
}