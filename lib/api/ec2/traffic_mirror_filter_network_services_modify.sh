p6_aws_ec2_traffic_mirror_filter_network_services_modify() {
    local traffic_mirror_filter_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-traffic-mirror-filter-network-services --traffic-mirror-filter-id $traffic_mirror_filter_id "$@"
}
