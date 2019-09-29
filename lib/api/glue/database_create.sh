######################################################################
#<
#
# Function:
#      = p6_aws_glue_database_create(database_input)
#
# Arg(s):
#    database_input - 
#
#
#>
######################################################################
p6_aws_glue_database_create() {
    local database_input="$1"
    shift 1

    p6_run_write_cmd aws glue create-database --database-input $database_input "$@"
}