######################################################################
#<
#
# Function:
#	p6_aws_s3api_multipart_upload_create(bucket, key)
#
#  Args:
#	bucket - 
#	key - 
#
#>
######################################################################
p6_aws_s3api_multipart_upload_create() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws s3api create-multipart-upload --bucket $bucket --key $key "$@"
}