######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_from_index_detach(directory_arn, index_reference, target_reference)
#
# Arg(s):
#    directory_arn - 
#    index_reference - 
#    target_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_from_index_detach() {
    local directory_arn="$1"
    local index_reference="$2"
    local target_reference="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory detach-from-index --directory-arn $directory_arn --index-reference $index_reference --target-reference $target_reference "$@"
}