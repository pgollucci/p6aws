######################################################################
#<
#
# Function:
#	p6_aws_rds_db_parameter_group_modify(db_parameter_group_name, parameters)
#
#  Args:
#	db_parameter_group_name - 
#	parameters - 
#
#>
######################################################################
p6_aws_rds_db_parameter_group_modify() {
    local db_parameter_group_name="$1"
    local parameters="$2"
    shift 2

    p6_run_write_cmd aws rds modify-db-parameter-group --db-parameter-group-name $db_parameter_group_name --parameters $parameters "$@"
}