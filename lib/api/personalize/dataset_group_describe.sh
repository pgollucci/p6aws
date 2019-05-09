p6_aws_personalize_dataset_group_describe() {
    local dataset_group_arn="$1"
    shift 1

    p6_run_read_cmd aws personalize describe-dataset-group --dataset-group-arn $dataset_group_arn "$@"
}
