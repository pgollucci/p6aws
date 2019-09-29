######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_object_delete(directory_arn, object_reference)
#
# Arg(s):
#    directory_arn - 
#    object_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_object_delete() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory delete-object --directory-arn $directory_arn --object-reference $object_reference "$@"
}