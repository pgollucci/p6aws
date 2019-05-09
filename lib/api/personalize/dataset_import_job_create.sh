p6_aws_personalize_dataset_import_job_create() {
    local job_name="$1"
    local dataset_arn="$2"
    local data_source="$3"
    local role_arn="$4"
    shift 4

    p6_run_write_cmd aws personalize create-dataset-import-job --job-name $job_name --dataset-arn $dataset_arn --data-source $data_source --role-arn $role_arn "$@"
}
