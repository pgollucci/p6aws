p6_aws_configservice_delivery_channel_put() {
    local delivery_channel="$1"
    shift 1

    p6_run_write_cmd aws configservice put-delivery-channel --delivery-channel $delivery_channel "$@"
}
