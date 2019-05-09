p6_aws_personalize_dataset_group_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws personalize create-dataset-group --name $name "$@"
}
