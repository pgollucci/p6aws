######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_snapshot_create(relational_database_name, relational_database_snapshot_name)
#
#  Args:
#	relational_database_name - 
#	relational_database_snapshot_name - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_snapshot_create() {
    local relational_database_name="$1"
    local relational_database_snapshot_name="$2"
    shift 2

    p6_run_write_cmd aws lightsail create-relational-database-snapshot --relational-database-name $relational_database_name --relational-database-snapshot-name $relational_database_snapshot_name "$@"
}