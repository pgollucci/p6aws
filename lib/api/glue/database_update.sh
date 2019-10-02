######################################################################
#<
#
# Function:
#	p6_aws_glue_database_update(name, database_input)
#
#  Args:
#	name - 
#	database_input - 
#
#>
######################################################################
p6_aws_glue_database_update() {
    local name="$1"
    local database_input="$2"
    shift 2

    p6_run_write_cmd aws glue update-database --name $name --database-input $database_input "$@"
}