p6_aws_worklink_website_authorization_provider_associate() {
    local fleet_arn="$1"
    local authorization_provider_type="$2"
    shift 2

    p6_run_write_cmd aws worklink associate-website-authorization-provider --fleet-arn $fleet_arn --authorization-provider-type $authorization_provider_type "$@"
}
