p6_aws_worklink_website_certificate_authority_associate() {
    local fleet_arn="$1"
    local certificate="$2"
    shift 2

    p6_run_write_cmd aws worklink associate-website-certificate-authority --fleet-arn $fleet_arn --certificate $certificate "$@"
}
