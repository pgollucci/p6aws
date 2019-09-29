######################################################################
#<
#
# Function:
#      = p6_aws_glue_table_delete(database_name, name)
#
# Arg(s):
#    database_name - 
#    name - 
#
#
#>
######################################################################
p6_aws_glue_table_delete() {
    local database_name="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws glue delete-table --database-name $database_name --name $name "$@"
}