p6_aws_cloudtrail_trail_create() {
    local name="$1"
    local s3_bucket_name="$2"
    shift 2

    p6_run_write_cmd aws cloudtrail create-trail --name $name --s3-bucket-name $s3_bucket_name "$@"
}
