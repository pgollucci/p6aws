######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_directory_delete(directory_arn)
#
# Arg(s):
#    directory_arn - 
#
#
#>
######################################################################
p6_aws_clouddirectory_directory_delete() {
    local directory_arn="$1"
    shift 1

    p6_run_write_cmd aws clouddirectory delete-directory --directory-arn $directory_arn "$@"
}