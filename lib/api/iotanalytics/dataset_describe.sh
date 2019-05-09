p6_aws_iotanalytics_dataset_describe() {
    local dataset_name="$1"
    shift 1

    p6_log_and_run aws iotanalytics describe-dataset --dataset-name $dataset_name "$@"
}
