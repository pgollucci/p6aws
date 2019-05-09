p6_aws_route53_traffic_policy_instance_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws route53 delete-traffic-policy-instance --id $id "$@"
}
