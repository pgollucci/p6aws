######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_schema_delete(schema_arn)
#
#  Args:
#	schema_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_schema_delete() {
    local schema_arn="$1"
    shift 1

    p6_run_write_cmd aws clouddirectory delete-schema --schema-arn $schema_arn "$@"
}