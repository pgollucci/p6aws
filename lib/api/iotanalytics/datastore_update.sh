p6_aws_iotanalytics_datastore_update() {
    local datastore_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics update-datastore --datastore-name $datastore_name "$@"
}
