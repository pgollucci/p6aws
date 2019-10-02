######################################################################
#<
#
# Function:
#	p6_aws_glue_tables_get(database_name)
#
#  Args:
#	database_name - 
#
#>
######################################################################
p6_aws_glue_tables_get() {
    local database_name="$1"
    shift 1

    p6_run_read_cmd aws glue get-tables --database-name $database_name "$@"
}