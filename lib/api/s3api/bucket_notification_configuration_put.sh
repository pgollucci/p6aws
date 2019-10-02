######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_notification_configuration_put(bucket, notification_configuration)
#
#  Args:
#	bucket - 
#	notification_configuration - 
#
#>
######################################################################
p6_aws_s3api_bucket_notification_configuration_put() {
    local bucket="$1"
    local notification_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-notification-configuration --bucket $bucket --notification-configuration $notification_configuration "$@"
}