######################################################################
#<
#
# Function:
#      = p6_aws_dynamodb_table_create(attribute_definitions, table_name, key_schema)
#
# Arg(s):
#    attribute_definitions - 
#    table_name - 
#    key_schema - 
#
#
#>
######################################################################
p6_aws_dynamodb_table_create() {
    local attribute_definitions="$1"
    local table_name="$2"
    local key_schema="$3"
    shift 3

    p6_run_write_cmd aws dynamodb create-table --attribute-definitions $attribute_definitions --table-name $table_name --key-schema $key_schema "$@"
}