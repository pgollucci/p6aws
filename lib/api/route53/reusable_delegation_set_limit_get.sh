p6_aws_route53_reusable_delegation_set_limit_get() {
    local type="$1"
    local delegation_set_id="$2"
    shift 2

    p6_log_and_run aws route53 get-reusable-delegation-set-limit --type $type --delegation-set-id $delegation_set_id "$@"
}
