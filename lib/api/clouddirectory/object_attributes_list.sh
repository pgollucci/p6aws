######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_object_attributes_list(directory_arn, object_reference)
#
# Arg(s):
#    directory_arn - 
#    object_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_object_attributes_list() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-object-attributes --directory-arn $directory_arn --object-reference $object_reference "$@"
}