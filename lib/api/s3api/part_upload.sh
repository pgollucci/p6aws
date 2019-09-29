######################################################################
#<
#
# Function:
#      = p6_aws_s3api_part_upload(bucket, key, part_number, upload_id)
#
# Arg(s):
#    bucket - 
#    key - 
#    part_number - 
#    upload_id - 
#
#
#>
######################################################################
p6_aws_s3api_part_upload() {
    local bucket="$1"
    local key="$2"
    local part_number="$3"
    local upload_id="$4"
    shift 4

    p6_run_write_cmd aws s3api upload-part --bucket $bucket --key $key --part-number $part_number --upload-id $upload_id "$@"
}