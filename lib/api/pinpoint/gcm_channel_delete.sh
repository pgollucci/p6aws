p6_aws_pinpoint_gcm_channel_delete() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws pinpoint delete-gcm-channel --application-id $application_id "$@"
}
