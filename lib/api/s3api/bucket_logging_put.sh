######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_logging_put(bucket, bucket_logging_status)
#
# Arg(s):
#    bucket - 
#    bucket_logging_status - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_logging_put() {
    local bucket="$1"
    local bucket_logging_status="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-logging --bucket $bucket --bucket-logging-status $bucket_logging_status "$@"
}