######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_cors_put(bucket, cors_configuration)
#
# Arg(s):
#    bucket - 
#    cors_configuration - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_cors_put() {
    local bucket="$1"
    local cors_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-cors --bucket $bucket --cors-configuration $cors_configuration "$@"
}