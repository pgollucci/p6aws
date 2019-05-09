p6_aws_iam_principal_policy_simulate() {
    local policy_source_arn="$1"
    local action_names="$2"
    shift 2

    p6_log_or_run aws iam simulate-principal-policy --policy-source-arn $policy_source_arn --action-names $action_names "$@"
}
