######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_stop(relational_database_name)
#
#  Args:
#	relational_database_name - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_stop() {
    local relational_database_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail stop-relational-database --relational-database-name $relational_database_name "$@"
}