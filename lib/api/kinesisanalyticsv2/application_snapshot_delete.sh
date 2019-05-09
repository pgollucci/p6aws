p6_aws_kinesisanalyticsv2_application_snapshot_delete() {
    local application_name="$1"
    local snapshot_name="$2"
    local snapshot_creation_timestamp="$3"
    shift 3

    p6_log_or_run aws kinesisanalyticsv2 delete-application-snapshot --application-name $application_name --snapshot-name $snapshot_name --snapshot-creation-timestamp $snapshot_creation_timestamp "$@"
}
