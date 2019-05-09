p6_aws_sagemaker_workteam_describe() {
    local workteam_name="$1"
    shift 1

    p6_log_and_run aws sagemaker describe-workteam --workteam-name $workteam_name "$@"
}
