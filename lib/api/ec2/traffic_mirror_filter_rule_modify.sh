p6_aws_ec2_traffic_mirror_filter_rule_modify() {
    local traffic_mirror_filter_rule_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-traffic-mirror-filter-rule --traffic-mirror-filter-rule-id $traffic_mirror_filter_rule_id "$@"
}
