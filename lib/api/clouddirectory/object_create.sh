######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_object_create(directory_arn, schema_facets)
#
#  Args:
#	directory_arn - 
#	schema_facets - 
#
#>
######################################################################
p6_aws_clouddirectory_object_create() {
    local directory_arn="$1"
    local schema_facets="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory create-object --directory-arn $directory_arn --schema-facets $schema_facets "$@"
}