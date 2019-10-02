######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_attached_indices_list(directory_arn, target_reference)
#
#  Args:
#	directory_arn - 
#	target_reference - 
#
#>
######################################################################
p6_aws_clouddirectory_attached_indices_list() {
    local directory_arn="$1"
    local target_reference="$2"
    shift 2

    p6_run_read_cmd aws clouddirectory list-attached-indices --directory-arn $directory_arn --target-reference $target_reference "$@"
}