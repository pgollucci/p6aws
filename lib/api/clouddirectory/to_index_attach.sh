######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_to_index_attach(directory_arn, index_reference, target_reference)
#
# Arg(s):
#    directory_arn - 
#    index_reference - 
#    target_reference - 
#
#
#>
######################################################################
p6_aws_clouddirectory_to_index_attach() {
    local directory_arn="$1"
    local index_reference="$2"
    local target_reference="$3"
    shift 3

    p6_run_write_cmd aws clouddirectory attach-to-index --directory-arn $directory_arn --index-reference $index_reference --target-reference $target_reference "$@"
}