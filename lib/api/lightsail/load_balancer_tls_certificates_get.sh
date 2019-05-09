p6_aws_lightsail_load_balancer_tls_certificates_get() {
    local load_balancer_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-load-balancer-tls-certificates --load-balancer-name $load_balancer_name "$@"
}
