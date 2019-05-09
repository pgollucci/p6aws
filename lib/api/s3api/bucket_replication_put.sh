p6_aws_s3api_bucket_replication_put() {
    local bucket="$1"
    local replication_configuration="$2"
    shift 2

    p6_log_or_run aws s3api put-bucket-replication --bucket $bucket --replication-configuration $replication_configuration "$@"
}
