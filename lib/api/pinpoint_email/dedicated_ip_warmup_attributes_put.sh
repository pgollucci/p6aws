p6_aws_pinpoint_email_dedicated_ip_warmup_attributes_put() {
    local ip="$1"
    local warmup_percentage="$2"
    shift 2

    p6_log_or_run aws pinpoint-email put-dedicated-ip-warmup-attributes --ip $ip --warmup-percentage $warmup_percentage "$@"
}
