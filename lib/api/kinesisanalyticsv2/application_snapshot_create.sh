p6_aws_kinesisanalyticsv2_application_snapshot_create() {
    local application_name="$1"
    local snapshot_name="$2"
    shift 2

    p6_log_or_run aws kinesisanalyticsv2 create-application-snapshot --application-name $application_name --snapshot-name $snapshot_name "$@"
}
