p6_aws_alexaforbusiness_device_with_network_profile_associate() {
    local device_arn="$1"
    local network_profile_arn="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness associate-device-with-network-profile --device-arn $device_arn --network-profile-arn $network_profile_arn "$@"
}
