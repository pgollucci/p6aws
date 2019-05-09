p6_aws_sagemaker_workteam_update() {
    local workteam_name="$1"
    shift 1

    p6_log_or_run aws sagemaker update-workteam --workteam-name $workteam_name "$@"
}
