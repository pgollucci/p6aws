p6_aws_s3api_bucket_analytics_configuration_delete() {
    local bucket="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws s3api delete-bucket-analytics-configuration --bucket $bucket --id $id "$@"
}
