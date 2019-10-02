######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_snapshot_delete(relational_database_snapshot_name)
#
#  Args:
#	relational_database_snapshot_name - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_snapshot_delete() {
    local relational_database_snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-relational-database-snapshot --relational-database-snapshot-name $relational_database_snapshot_name "$@"
}