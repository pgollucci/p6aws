######################################################################
#<
#
# Function:
#	p6_aws_rds_db_parameters_describe(db_parameter_group_name)
#
#  Args:
#	db_parameter_group_name - 
#
#>
######################################################################
p6_aws_rds_db_parameters_describe() {
    local db_parameter_group_name="$1"
    shift 1

    p6_run_read_cmd aws rds describe-db-parameters --db-parameter-group-name $db_parameter_group_name "$@"
}