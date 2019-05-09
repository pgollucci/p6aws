p6_aws_sagemaker_subscribed_workteam_describe() {
    local workteam_arn="$1"
    shift 1

    p6_run_read_cmd aws sagemaker describe-subscribed-workteam --workteam-arn $workteam_arn "$@"
}
