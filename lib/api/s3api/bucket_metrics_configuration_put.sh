p6_aws_s3api_bucket_metrics_configuration_put() {
    local bucket="$1"
    local id="$2"
    local metrics_configuration="$3"
    shift 3

    p6_run_write_cmd aws s3api put-bucket-metrics-configuration --bucket $bucket --id $id --metrics-configuration $metrics_configuration "$@"
}
