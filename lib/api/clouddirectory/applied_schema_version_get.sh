######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_applied_schema_version_get(schema_arn)
#
#  Args:
#	schema_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_applied_schema_version_get() {
    local schema_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory get-applied-schema-version --schema-arn $schema_arn "$@"
}