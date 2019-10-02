######################################################################
#<
#
# Function:
#	p6_aws_glue_archive(database_name, table_input)
#
#  Args:
#	database_name - 
#	table_input - 
#
#>
######################################################################
p6_aws_glue_archive() {
        local database_name="$1"
        local table_input="$2"
        shift 2

    cond_log_and_run aws glue update-table --database-name $database_name --table-input $table_input --skip-archive "$@"
}