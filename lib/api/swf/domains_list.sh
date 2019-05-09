p6_aws_swf_domains_list() {
    local registration_status="$1"
    shift 1

    p6_log_and_run aws swf list-domains --registration-status $registration_status "$@"
}
