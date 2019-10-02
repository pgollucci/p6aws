######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_cors_delete(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3api_bucket_cors_delete() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api delete-bucket-cors --bucket $bucket "$@"
}