######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_directory_get(directory_arn)
#
#  Args:
#	directory_arn - 
#
#>
######################################################################
p6_aws_clouddirectory_directory_get() {
    local directory_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory get-directory --directory-arn $directory_arn "$@"
}