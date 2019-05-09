p6_aws_kinesisanalyticsv2_application_snapshot_describe() {
    local application_name="$1"
    local snapshot_name="$2"
    shift 2

    p6_run_read_cmd aws kinesisanalyticsv2 describe-application-snapshot --application-name $application_name --snapshot-name $snapshot_name "$@"
}
