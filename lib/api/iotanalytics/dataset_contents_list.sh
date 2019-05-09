p6_aws_iotanalytics_dataset_contents_list() {
    local dataset_name="$1"
    shift 1

    p6_log_and_run aws iotanalytics list-dataset-contents --dataset-name $dataset_name "$@"
}
