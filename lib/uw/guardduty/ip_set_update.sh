p6_aws_guardduty_activate() {
        local detector_id="$1"
        local ip_set_id="$2"
        shift 2

    cond_log_and_run aws guardduty update-ip-set --detector-id $detector_id --ip-set-id $ip_set_id --activate "$@"
}

