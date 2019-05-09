p6_aws_route53_reusable_delegation_set_create() {
    local caller_reference="$1"
    shift 1

    p6_run_write_cmd aws route53 create-reusable-delegation-set --caller-reference $caller_reference "$@"
}
