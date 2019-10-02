######################################################################
#<
#
# Function:
#	p6_aws_neptune_db_parameter_group_reset(db_parameter_group_name)
#
#  Args:
#	db_parameter_group_name - 
#
#>
######################################################################
p6_aws_neptune_db_parameter_group_reset() {
    local db_parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws neptune reset-db-parameter-group --db-parameter-group-name $db_parameter_group_name "$@"
}