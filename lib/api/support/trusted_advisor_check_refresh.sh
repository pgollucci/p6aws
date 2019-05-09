p6_aws_support_trusted_advisor_check_refresh() {
    local check_id="$1"
    shift 1

    p6_run_write_cmd aws support refresh-trusted-advisor-check --check-id $check_id "$@"
}
