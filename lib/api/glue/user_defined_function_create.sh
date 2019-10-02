######################################################################
#<
#
# Function:
#	p6_aws_glue_user_defined_function_create(database_name, function_input)
#
#  Args:
#	database_name - 
#	function_input - 
#
#>
######################################################################
p6_aws_glue_user_defined_function_create() {
    local database_name="$1"
    local function_input="$2"
    shift 2

    p6_run_write_cmd aws glue create-user-defined-function --database-name $database_name --function-input $function_input "$@"
}