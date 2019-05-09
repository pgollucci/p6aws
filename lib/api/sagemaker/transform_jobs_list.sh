p6_aws_sagemaker_transform_jobs_list() {

    p6_run_read_cmd aws sagemaker list-transform-jobs "$@"
}
