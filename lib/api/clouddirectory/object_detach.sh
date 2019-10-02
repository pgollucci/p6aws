######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_object_detach(directory_arn, parent_reference, link_name)
#
#  Args:
#	directory_arn - 
#	parent_reference - 
#	link_name - 
#
#>
######################################################################
p6_aws_clouddirectory_object_detach() {
    local directory_arn="$1"
    local parent_reference="$2"
    local link_name="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory detach-object --directory-arn $directory_arn --parent-reference $parent_reference --link-name $link_name "$@"
}