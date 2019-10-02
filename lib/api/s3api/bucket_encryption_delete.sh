######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_encryption_delete(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3api_bucket_encryption_delete() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api delete-bucket-encryption --bucket $bucket "$@"
}