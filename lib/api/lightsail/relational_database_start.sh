######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_start(relational_database_name)
#
#  Args:
#	relational_database_name - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_start() {
    local relational_database_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail start-relational-database --relational-database-name $relational_database_name "$@"
}