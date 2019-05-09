p6_aws_s3api_bucket_metrics_configuration_delete() {
    local bucket="$1"
    local id="$2"
    shift 2

    p6_log_or_run aws s3api delete-bucket-metrics-configuration --bucket $bucket --id $id "$@"
}
