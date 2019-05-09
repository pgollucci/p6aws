p6_aws_organizations_policies_for_target_list() {
    local target_id="$1"
    local filter="$2"
    shift 2

    p6_run_read_cmd aws organizations list-policies-for-target --target-id $target_id --filter $filter "$@"
}
