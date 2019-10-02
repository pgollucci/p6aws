######################################################################
#<
#
# Function:
#	p6_aws_rds_db_security_group_delete(db_security_group_name)
#
#  Args:
#	db_security_group_name - 
#
#>
######################################################################
p6_aws_rds_db_security_group_delete() {
    local db_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-security-group --db-security-group-name $db_security_group_name "$@"
}