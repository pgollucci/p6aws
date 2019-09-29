######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_facet_from_object_remove(directory_arn, schema_facet, object_reference)
#
# Arg(s):
#    directory_arn - 
#    schema_facet - 
#    object_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_facet_from_object_remove() {
    local directory_arn="$1"
    local schema_facet="$2"
    local object_reference="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory remove-facet-from-object --directory-arn $directory_arn --schema-facet $schema_facet --object-reference $object_reference "$@"
}