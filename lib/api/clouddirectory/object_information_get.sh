######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_object_information_get(directory_arn, object_reference)
#
#  Args:
#	directory_arn - 
#	object_reference - 
#
#>
######################################################################
p6_aws_clouddirectory_object_information_get() {
    local directory_arn="$1"
    local object_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory get-object-information --directory-arn $directory_arn --object-reference $object_reference "$@"
}