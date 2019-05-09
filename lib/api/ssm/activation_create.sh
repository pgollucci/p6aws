p6_aws_ssm_activation_create() {
    local iam_role="$1"
    shift 1

    p6_log_or_run aws ssm create-activation --iam-role $iam_role "$@"
}
