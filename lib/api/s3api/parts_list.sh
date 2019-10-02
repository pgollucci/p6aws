######################################################################
#<
#
# Function:
#	p6_aws_s3api_parts_list(bucket, key, upload_id)
#
#  Args:
#	bucket - 
#	key - 
#	upload_id - 
#
#>
######################################################################
p6_aws_s3api_parts_list() {
    local bucket="$1"
    local key="$2"
    local upload_id="$3"
    shift 3

    p6_run_read_cmd aws s3api list-parts --bucket $bucket --key $key --upload-id $upload_id "$@"
}