p6_aws_iotanalytics_dataset_content_delete() {
    local dataset_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics delete-dataset-content --dataset-name $dataset_name "$@"
}
