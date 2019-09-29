######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_schema_update(schema_arn, name)
#
# Arg(s):
#    schema_arn - 
#    name - 
#
#
#>
######################################################################
p6_aws_clouddirectory_schema_update() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory update-schema --schema-arn $schema_arn --name $name "$@"
}