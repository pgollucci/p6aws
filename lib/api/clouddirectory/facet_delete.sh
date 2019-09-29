######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_facet_delete(schema_arn, name)
#
# Arg(s):
#    schema_arn - 
#    name - 
#
#
#>
######################################################################
p6_aws_clouddirectory_facet_delete() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory delete-facet --schema-arn $schema_arn --name $name "$@"
}