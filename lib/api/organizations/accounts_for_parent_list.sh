p6_aws_organizations_accounts_for_parent_list() {
    local parent_id="$1"
    shift 1

    p6_run_read_cmd aws organizations list-accounts-for-parent --parent-id $parent_id "$@"
}
