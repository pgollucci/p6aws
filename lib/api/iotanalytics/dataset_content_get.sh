p6_aws_iotanalytics_dataset_content_get() {
    local dataset_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics get-dataset-content --dataset-name $dataset_name "$@"
}
