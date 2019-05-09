p6_aws_s3api_bucket_create() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api create-bucket --bucket $bucket "$@"
}
