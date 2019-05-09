p6_aws_iotanalytics_dataset_create() {
    local dataset_name="$1"
    local actions="$2"
    shift 2

    p6_run_write_cmd aws iotanalytics create-dataset --dataset-name $dataset_name --actions $actions "$@"
}
