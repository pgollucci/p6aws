p6_aws_sagemaker_workteam_delete() {
    local workteam_name="$1"
    shift 1

    p6_run_write_cmd aws sagemaker delete-workteam --workteam-name $workteam_name "$@"
}
