p6_aws_organizations_policies_list() {
    local filter="$1"
    shift 1

    p6_run_read_cmd aws organizations list-policies --filter $filter "$@"
}
