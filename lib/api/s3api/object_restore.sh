######################################################################
#<
#
# Function:
#	p6_aws_s3api_object_restore(bucket, key)
#
#  Args:
#	bucket - 
#	key - 
#
#>
######################################################################
p6_aws_s3api_object_restore() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws s3api restore-object --bucket $bucket --key $key "$@"
}