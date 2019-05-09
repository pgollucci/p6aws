p6_aws_worklink_domain_associate() {
    local fleet_arn="$1"
    local domain_name="$2"
    local acm_certificate_arn="$3"
    shift 3

    p6_run_write_cmd aws worklink associate-domain --fleet-arn $fleet_arn --domain-name $domain_name --acm-certificate-arn $acm_certificate_arn "$@"
}
