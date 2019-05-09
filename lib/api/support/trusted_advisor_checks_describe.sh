p6_aws_support_trusted_advisor_checks_describe() {
    local language="$1"
    shift 1

    p6_log_and_run aws support describe-trusted-advisor-checks --language $language "$@"
}
