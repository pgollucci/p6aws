p6_aws_worklink_domains_list() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink list-domains --fleet-arn $fleet_arn "$@"
}
