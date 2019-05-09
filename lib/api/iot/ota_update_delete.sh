p6_aws_iot_ota_update_delete() {
    local ota_update_id="$1"
    shift 1

    p6_log_or_run aws iot delete-ota-update --ota-update-id $ota_update_id "$@"
}
