######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_encryption_put(bucket, server_side_encryption_configuration)
#
#  Args:
#	bucket - 
#	server_side_encryption_configuration - 
#
#>
######################################################################
p6_aws_s3api_bucket_encryption_put() {
    local bucket="$1"
    local server_side_encryption_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-encryption --bucket $bucket --server-side-encryption-configuration $server_side_encryption_configuration "$@"
}