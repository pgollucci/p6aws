p6_aws_workspaces_available_management_cidr_ranges_list() {
    local management_cidr_range_constraint="$1"
    shift 1

    p6_run_read_cmd aws workspaces list-available-management-cidr-ranges --management-cidr-range-constraint $management_cidr_range_constraint "$@"
}
