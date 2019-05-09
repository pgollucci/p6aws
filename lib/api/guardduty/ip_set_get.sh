p6_aws_guardduty_ip_set_get() {
    local detector_id="$1"
    local ip_set_id="$2"
    shift 2

    p6_log_and_run aws guardduty get-ip-set --detector-id $detector_id --ip-set-id $ip_set_id "$@"
}
