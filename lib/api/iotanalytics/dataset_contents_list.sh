p6_aws_iotanalytics_dataset_contents_list() {
    local dataset_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics list-dataset-contents --dataset-name $dataset_name "$@"
}
