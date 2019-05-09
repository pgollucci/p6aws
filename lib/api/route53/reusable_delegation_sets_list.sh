p6_aws_route53_reusable_delegation_sets_list() {

    p6_run_read_cmd aws route53 list-reusable-delegation-sets "$@"
}
