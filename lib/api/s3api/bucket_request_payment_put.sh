######################################################################
#<
#
# Function:
#	p6_aws_s3api_bucket_request_payment_put(bucket, request_payment_configuration)
#
#  Args:
#	bucket - 
#	request_payment_configuration - 
#
#>
######################################################################
p6_aws_s3api_bucket_request_payment_put() {
    local bucket="$1"
    local request_payment_configuration="$2"
    shift 2

    p6_run_write_cmd aws s3api put-bucket-request-payment --bucket $bucket --request-payment-configuration $request_payment_configuration "$@"
}