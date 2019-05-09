p6_aws_pinpoint_email_domain_deliverability_campaigns_list() {
    local start_date="$1"
    local end_date="$2"
    local subscribed_domain="$3"
    shift 3

    p6_run_read_cmd aws pinpoint-email list-domain-deliverability-campaigns --start-date $start_date --end-date $end_date --subscribed-domain $subscribed_domain "$@"
}
