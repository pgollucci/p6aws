p6_aws_sagemaker_workteam_delete() {
    local workteam_name="$1"
    shift 1

    p6_log_or_run aws sagemaker delete-workteam --workteam-name $workteam_name "$@"
}
