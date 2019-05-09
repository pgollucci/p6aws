p6_aws_ds_ip_routes_remove() {
    local directory_id="$1"
    local cidr_ips="$2"
    shift 2

    p6_log_or_run aws ds remove-ip-routes --directory-id $directory_id --cidr-ips $cidr_ips "$@"
}
