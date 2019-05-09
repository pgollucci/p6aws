p6_aws_pinpoint_email_dedicated_ip_pool_create() {
    local pool_name="$1"
    shift 1

    p6_run_write_cmd aws pinpoint-email create-dedicated-ip-pool --pool-name $pool_name "$@"
}
