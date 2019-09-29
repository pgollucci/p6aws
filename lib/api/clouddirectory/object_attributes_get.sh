######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_object_attributes_get(directory_arn, object_reference, schema_facet, attribute_names)
#
# Arg(s):
#    directory_arn - 
#    object_reference - 
#    schema_facet - 
#    attribute_names - 
#
#
#>
######################################################################
p6_aws_clouddirectory_object_attributes_get() {
    local directory_arn="$1"
    local object_reference="$2"
    local schema_facet="$3"
    local attribute_names="$4"
    shift 4

    p6_run_read_cmd aws clouddirectory get-object-attributes --directory-arn $directory_arn --object-reference $object_reference --schema-facet $schema_facet --attribute-names $attribute_names "$@"
}