p6_aws_personalize_dataset_import_job_describe() {
    local dataset_import_job_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-dataset-import-job --dataset-import-job-arn $dataset_import_job_arn "$@"
}
