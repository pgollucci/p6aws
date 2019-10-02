######################################################################
#<
#
# Function:
#	p6_aws_s3api_multipart_upload_abort(bucket, key, upload_id)
#
#  Args:
#	bucket - 
#	key - 
#	upload_id - 
#
#>
######################################################################
p6_aws_s3api_multipart_upload_abort() {
    local bucket="$1"
    local key="$2"
    local upload_id="$3"
    shift 3

    p6_run_write_cmd aws s3api abort-multipart-upload --bucket $bucket --key $key --upload-id $upload_id "$@"
}