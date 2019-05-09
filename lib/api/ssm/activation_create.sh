p6_aws_ssm_activation_create() {
    local iam_role="$1"
    shift 1

    p6_run_write_cmd aws ssm create-activation --iam-role $iam_role "$@"
}
