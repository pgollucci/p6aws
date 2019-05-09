p6_aws_waf_ip_set_get() {
    local ip_set_id="$1"
    shift 1

    p6_log_and_run aws waf get-ip-set --ip-set-id $ip_set_id "$@"
}
