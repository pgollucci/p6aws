p6_aws_storagegateway_upload_buffer_add() {
    local gateway_arn="$1"
    local disk_ids="$2"
    shift 2

    p6_log_or_run aws storagegateway add-upload-buffer --gateway-arn $gateway_arn --disk-ids $disk_ids "$@"
}
