p6_aws_quicksight_group_memberships_list() {
    local group_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_log_and_run aws quicksight list-group-memberships --group-name $group_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}
