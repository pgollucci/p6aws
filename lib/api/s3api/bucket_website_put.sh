######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_website_put(bucket, website_configuration)
#
#  Args:
#	bucket - 
#	website_configuration - 
#
#>
######################################################################
p6_aws_s3api_bucket_website_put() {
    local bucket="$1"
    local website_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-website --bucket $bucket --website-configuration $website_configuration "$@"
}