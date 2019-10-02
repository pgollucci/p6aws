######################################################################
#<
#
# Function:
#	p6_aws_rds_db_snapshot_attributes_describe(db_snapshot_identifier)
#
#  Args:
#	db_snapshot_identifier - 
#
#>
######################################################################
p6_aws_rds_db_snapshot_attributes_describe() {
    local db_snapshot_identifier="$1"
    shift 1

    p6_run_read_cmd aws rds describe-db-snapshot-attributes --db-snapshot-identifier $db_snapshot_identifier "$@"
}