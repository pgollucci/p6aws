######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_snapshot_create(db_snapshot_identifier, db_instance_identifier)
#
# Arg(s):
#    db_snapshot_identifier - 
#    db_instance_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_snapshot_create() {
    local db_snapshot_identifier="$1"
    local db_instance_identifier="$2"
    shift 2

    p6_run_write_cmd aws rds create-db-snapshot --db-snapshot-identifier $db_snapshot_identifier --db-instance-identifier $db_instance_identifier "$@"
}