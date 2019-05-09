p6_aws_pinpoint_adm_channel_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-adm-channel --application-id $application_id "$@"
}
