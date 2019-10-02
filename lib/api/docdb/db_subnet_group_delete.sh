######################################################################
#<
#
# Function:
#	p6_aws_docdb_db_subnet_group_delete(db_subnet_group_name)
#
#  Args:
#	db_subnet_group_name - 
#
#>
######################################################################
p6_aws_docdb_db_subnet_group_delete() {
    local db_subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws docdb delete-db-subnet-group --db-subnet-group-name $db_subnet_group_name "$@"
}