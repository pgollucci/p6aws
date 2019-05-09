p6_aws_sagemaker_workteam_update() {
    local workteam_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker update-workteam --workteam-name $workteam_name "$@"
}
