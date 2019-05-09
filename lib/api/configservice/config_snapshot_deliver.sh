p6_aws_configservice_config_snapshot_deliver() {
    local delivery_channel_name="$1"
    shift 1

    p6_run_write_cmd aws configservice deliver-config-snapshot --delivery-channel-name $delivery_channel_name "$@"
}
