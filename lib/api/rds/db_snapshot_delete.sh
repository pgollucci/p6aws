######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_snapshot_delete(db_snapshot_identifier)
#
# Arg(s):
#    db_snapshot_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_snapshot_delete() {
    local db_snapshot_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-snapshot --db-snapshot-identifier $db_snapshot_identifier "$@"
}