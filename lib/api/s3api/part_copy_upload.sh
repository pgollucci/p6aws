######################################################################
#<
#
# Function:
#	p6_aws_s3api_part_copy_upload(bucket, copy_source, key, part_number, upload_id)
#
#  Args:
#	bucket - 
#	copy_source - 
#	key - 
#	part_number - 
#	upload_id - 
#
#>
######################################################################
p6_aws_s3api_part_copy_upload() {
    local bucket="$1"
    local copy_source="$2"
    local key="$3"
    local part_number="$4"
    local upload_id="$5"
    shift 5

    p6_run_write_cmd aws s3api upload-part-copy --bucket $bucket --copy-source $copy_source --key $key --part-number $part_number --upload-id $upload_id "$@"
}