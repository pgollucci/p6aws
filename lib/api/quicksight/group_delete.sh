p6_aws_quicksight_group_delete() {
    local group_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_run_write_cmd aws quicksight delete-group --group-name $group_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}
