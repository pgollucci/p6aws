p6_aws_alexaforbusiness_network_profile_delete() {
    local network_profile_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness delete-network-profile --network-profile-arn $network_profile_arn "$@"
}
