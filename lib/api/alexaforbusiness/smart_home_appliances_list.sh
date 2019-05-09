p6_aws_alexaforbusiness_smart_home_appliances_list() {
    local room_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness list-smart-home-appliances --room-arn $room_arn "$@"
}
