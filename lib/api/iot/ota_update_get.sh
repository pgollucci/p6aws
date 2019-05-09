p6_aws_iot_ota_update_get() {
    local ota_update_id="$1"
    shift 1

    p6_log_and_run aws iot get-ota-update --ota-update-id $ota_update_id "$@"
}
