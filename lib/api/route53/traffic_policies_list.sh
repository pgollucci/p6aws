p6_aws_route53_traffic_policies_list() {

    p6_run_read_cmd aws route53 list-traffic-policies "$@"
}
