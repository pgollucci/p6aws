p6_aws_sagemaker_subscribed_workteam_describe() {
    local workteam_arn="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-subscribed-workteam --workteam-arn $workteam_arn "$@"
}
