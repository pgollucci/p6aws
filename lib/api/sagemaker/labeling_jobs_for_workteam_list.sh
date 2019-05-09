p6_aws_sagemaker_labeling_jobs_for_workteam_list() {
    local workteam_arn="$1"
    shift 1

    p6_log_and_run aws sagemaker list-labeling-jobs-for-workteam --workteam-arn $workteam_arn "$@"
}
