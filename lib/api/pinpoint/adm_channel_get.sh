p6_aws_pinpoint_adm_channel_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-adm-channel --application-id $application_id "$@"
}
