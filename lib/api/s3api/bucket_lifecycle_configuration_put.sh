######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_lifecycle_configuration_put(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_lifecycle_configuration_put() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api put-bucket-lifecycle-configuration --bucket $bucket "$@"
}