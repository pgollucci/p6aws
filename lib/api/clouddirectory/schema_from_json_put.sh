######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_schema_from_json_put(schema_arn, document)
#
#  Args:
#	schema_arn - 
#	document - 
#
#>
######################################################################
p6_aws_clouddirectory_schema_from_json_put() {
    local schema_arn="$1"
    local document="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory put-schema-from-json --schema-arn $schema_arn --document $document "$@"
}