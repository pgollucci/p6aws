######################################################################
#<
#
# Function:
#      = p6_aws_glue_user_defined_function_delete(database_name, function_name)
#
# Arg(s):
#    database_name - 
#    function_name - 
#
#
#>
######################################################################
p6_aws_glue_user_defined_function_delete() {
    local database_name="$1"
    local function_name="$2"
    shift 2

    p6_run_write_cmd aws glue delete-user-defined-function --database-name $database_name --function-name $function_name "$@"
}