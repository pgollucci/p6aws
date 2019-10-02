######################################################################
#<
#
# Function:
#	p6_aws_personalize_schema_describe(schema_arn)
#
#  Args:
#	schema_arn - 
#
#>
######################################################################
p6_aws_personalize_schema_describe() {
    local schema_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-schema --schema-arn $schema_arn "$@"
}