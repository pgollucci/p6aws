p6_aws_route53domains_contact_reachability_email_resend() {

    p6_log_or_run aws route53domains resend-contact-reachability-email "$@"
}
