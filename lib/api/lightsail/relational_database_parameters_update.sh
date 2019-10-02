######################################################################
#<
#
# Function:
#	p6_aws_lightsail_relational_database_parameters_update(relational_database_name, parameters)
#
#  Args:
#	relational_database_name - 
#	parameters - 
#
#>
######################################################################
p6_aws_lightsail_relational_database_parameters_update() {
    local relational_database_name="$1"
    local parameters="$2"
    shift 2

    p6_run_write_cmd aws lightsail update-relational-database-parameters --relational-database-name $relational_database_name --parameters $parameters "$@"
}