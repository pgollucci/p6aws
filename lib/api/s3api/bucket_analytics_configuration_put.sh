######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_analytics_configuration_put(bucket, id, analytics_configuration)
#
#  Args:
#	bucket - 
#	id - 
#	analytics_configuration - 
#
#>
######################################################################
p6_aws_s3api_bucket_analytics_configuration_put() {
    local bucket="$1"
    local id="$2"
    local analytics_configuration="$3"
    shift 3

    p6_run_write_cmd aws s3api put-bucket-analytics-configuration --bucket $bucket --id $id --analytics-configuration $analytics_configuration "$@"
}