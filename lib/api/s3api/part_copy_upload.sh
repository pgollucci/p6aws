p6_aws_s3api_part_copy_upload() {
    local bucket="$1"
    local copy_source="$2"
    local key="$3"
    local part_number="$4"
    local upload_id="$5"
    shift 5

    p6_log_or_run aws s3api upload-part-copy --bucket $bucket --copy-source $copy_source --key $key --part-number $part_number --upload-id $upload_id "$@"
}
