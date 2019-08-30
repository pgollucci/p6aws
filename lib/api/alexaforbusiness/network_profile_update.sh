p6_aws_alexaforbusiness_network_profile_update() {
    local network_profile_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness update-network-profile --network-profile-arn $network_profile_arn "$@"
}
