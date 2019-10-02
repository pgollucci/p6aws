######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_analytics_configurations_list(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3api_bucket_analytics_configurations_list() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api list-bucket-analytics-configurations --bucket $bucket "$@"
}