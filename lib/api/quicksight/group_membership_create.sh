p6_aws_quicksight_group_membership_create() {
    local member_name="$1"
    local group_name="$2"
    local aws_account_id="$3"
    local namespace="$4"
    shift 4

    p6_log_or_run aws quicksight create-group-membership --member-name $member_name --group-name $group_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}
