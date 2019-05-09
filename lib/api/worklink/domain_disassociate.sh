p6_aws_worklink_domain_disassociate() {
    local fleet_arn="$1"
    local domain_name="$2"
    shift 2

    p6_run_write_cmd aws worklink disassociate-domain --fleet-arn $fleet_arn --domain-name $domain_name "$@"
}
