p6_aws_route53_reusable_delegation_set_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws route53 delete-reusable-delegation-set --id $id "$@"
}
