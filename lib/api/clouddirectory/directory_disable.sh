######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_directory_disable(directory_arn)
#
#  Args:
#	directory_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_directory_disable() {
    local directory_arn="$1"
    shift 1

    p6_run_write_cmd aws clouddirectory disable-directory --directory-arn $directory_arn "$@"
}