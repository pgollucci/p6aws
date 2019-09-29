######################################################################
#<
#
# Function:
#      = p6_aws_glue_table_create(database_name, table_input)
#
# Arg(s):
#    database_name - 
#    table_input - 
#
#
#>
######################################################################
p6_aws_glue_table_create() {
    local database_name="$1"
    local table_input="$2"
    shift 2

    p6_run_write_cmd aws glue create-table --database-name $database_name --table-input $table_input "$@"
}