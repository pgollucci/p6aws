######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_acl_put(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_acl_put() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api put-bucket-acl --bucket $bucket "$@"
}