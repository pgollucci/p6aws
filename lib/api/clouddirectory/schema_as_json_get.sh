######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_schema_as_json_get(schema_arn)
#
# Arg(s):
#    schema_arn - 
#
#
#>
######################################################################
p6_aws_clouddirectory_schema_as_json_get() {
    local schema_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory get-schema-as-json --schema-arn $schema_arn "$@"
}