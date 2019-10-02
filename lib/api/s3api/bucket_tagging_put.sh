######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_tagging_put(bucket, tagging)
#
#  Args:
#	bucket - 
#	tagging - 
#
#>
######################################################################
p6_aws_s3api_bucket_tagging_put() {
    local bucket="$1"
    local tagging="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-tagging --bucket $bucket --tagging $tagging "$@"
}