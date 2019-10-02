######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_facet_update(schema_arn, name)
#
#  Args:
#	schema_arn - 
#	name - 
#
#>
######################################################################
p6_aws_clouddirectory_facet_update() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory update-facet --schema-arn $schema_arn --name $name "$@"
}