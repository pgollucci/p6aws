p6_aws_lightsail_static_ip_release() {
    local static_ip_name="$1"
    shift 1

    p6_log_or_run aws lightsail release-static-ip --static-ip-name $static_ip_name "$@"
}
