######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_facet_attributes_list(schema_arn, name)
#
#  Args:
#	schema_arn - 
#	name - 
#
#>
######################################################################
p6_aws_clouddirectory_facet_attributes_list() {
    local schema_arn="$1"
    local name="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-facet-attributes --schema-arn $schema_arn --name $name "$@"
}