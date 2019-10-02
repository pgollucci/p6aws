######################################################################
#<
#
# Function:
#	p6_aws_clouddirectory_write_batch(directory_arn, operations)
#
#  Args:
#	directory_arn - 
#	operations - 
#
#>
######################################################################
p6_aws_clouddirectory_write_batch() {
    local directory_arn="$1"
    local operations="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory batch-write --directory-arn $directory_arn --operations $operations "$@"
}