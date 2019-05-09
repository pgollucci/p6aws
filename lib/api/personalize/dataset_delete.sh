p6_aws_personalize_dataset_delete() {
    local dataset_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-dataset --dataset-arn $dataset_arn "$@"
}
