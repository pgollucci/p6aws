p6_aws_route53_account_limit_get() {
    local type="$1"
    shift 1

    p6_log_and_run aws route53 get-account-limit --type $type "$@"
}
