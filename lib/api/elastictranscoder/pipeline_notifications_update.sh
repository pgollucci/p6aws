p6_aws_elastictranscoder_pipeline_notifications_update() {
    local id="$1"
    local notifications="$2"
    shift 2

    p6_log_or_run aws elastictranscoder update-pipeline-notifications --id $id --notifications $notifications "$@"
}
