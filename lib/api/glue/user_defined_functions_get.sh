######################################################################
#<
#
# Function:
#      = p6_aws_glue_user_defined_functions_get(database_name, pattern)
#
# Arg(s):
#    database_name - 
#    pattern - 
#
#
#>
######################################################################
p6_aws_glue_user_defined_functions_get() {
    local database_name="$1"
    local pattern="$2"
    shift 2

    p6_run_read_cmd aws glue get-user-defined-functions --database-name $database_name --pattern $pattern "$@"
}