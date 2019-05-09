p6_aws_s3api_bucket_replication_get() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api get-bucket-replication --bucket $bucket "$@"
}
