######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_object_attach(directory_arn, parent_reference, child_reference, link_name)
#
# Arg(s):
#    directory_arn - 
#    parent_reference - 
#    child_reference - 
#    link_name - 
#
#
#>
######################################################################
p6_aws_clouddirectory_object_attach() {
    local directory_arn="$1"
    local parent_reference="$2"
    local child_reference="$3"
    local link_name="$4"
    shift 4

    p6_run_write_cmd aws clouddirectory attach-object --directory-arn $directory_arn --parent-reference $parent_reference --child-reference $child_reference --link-name $link_name "$@"
}