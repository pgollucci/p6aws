p6_aws_machinelearning_data_source_delete() {
    local data_source_id="$1"
    shift 1

    p6_log_or_run aws machinelearning delete-data-source --data-source-id $data_source_id "$@"
}
