######################################################################
#<
#
# Function:
#	p6_aws_athena_named_query_create(name, database, query_string)
#
#  Args:
#	name - 
#	database - 
#	query_string - 
#
#>
######################################################################
p6_aws_athena_named_query_create() {
    local name="$1"
    local database="$2"
    local query_string="$3"
    shift 3

    p6_run_write_cmd aws athena create-named-query --name $name --database $database --query-string $query_string "$@"
}