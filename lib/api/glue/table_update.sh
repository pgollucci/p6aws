######################################################################
#<
#
# Function:
#      = p6_aws_glue_table_update(database_name, table_input)
#
# Arg(s):
#    database_name - 
#    table_input - 
#
#
#>
######################################################################
p6_aws_glue_table_update() {
    local database_name="$1"
    local table_input="$2"
    shift 2

    p6_run_write_cmd aws glue update-table --database-name $database_name --table-input $table_input "$@"
}