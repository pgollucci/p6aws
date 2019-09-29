######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_directory_create(name, schema_arn)
#
# Arg(s):
#    name - 
#    schema_arn - 
#
#
#>
######################################################################
p6_aws_clouddirectory_directory_create() {
    local name="$1"
    local schema_arn="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory create-directory --name $name --schema-arn $schema_arn "$@"
}