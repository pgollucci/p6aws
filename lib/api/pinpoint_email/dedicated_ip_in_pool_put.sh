p6_aws_pinpoint_email_dedicated_ip_in_pool_put() {
    local ip="$1"
    local destination_pool_name="$2"
    shift 2

    p6_log_or_run aws pinpoint-email put-dedicated-ip-in-pool --ip $ip --destination-pool-name $destination_pool_name "$@"
}
