######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_object_attributes_update(directory_arn, object_reference, attribute_updates)
#
# Arg(s):
#    directory_arn - 
#    object_reference - 
#    attribute_updates - 
#
#
#>
######################################################################
p6_aws_clouddirectory_object_attributes_update() {
    local directory_arn="$1"
    local object_reference="$2"
    local attribute_updates="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory update-object-attributes --directory-arn $directory_arn --object-reference $object_reference --attribute-updates $attribute_updates "$@"
}