p6_aws_lightsail_load_balancer_tls_certificate_delete() {
    local load_balancer_name="$1"
    local certificate_name="$2"
    shift 2

    p6_log_or_run aws lightsail delete-load-balancer-tls-certificate --load-balancer-name $load_balancer_name --certificate-name $certificate_name "$@"
}
