######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_policy_put(bucket, policy)
#
# Arg(s):
#    bucket - 
#    policy - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_policy_put() {
    local bucket="$1"
    local policy="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-policy --bucket $bucket --policy $policy "$@"
}