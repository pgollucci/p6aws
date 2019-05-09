p6_aws_waf_ip_set_delete() {
    local ip_set_id="$1"
    local change_token="$2"
    shift 2

    p6_log_or_run aws waf delete-ip-set --ip-set-id $ip_set_id --change-token $change_token "$@"
}
