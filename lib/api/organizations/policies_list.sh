p6_aws_organizations_policies_list() {
    local filter="$1"
    shift 1

    p6_log_and_run aws organizations list-policies --filter $filter "$@"
}
