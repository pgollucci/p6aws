p6_aws_robomaker_robot_create() {
    local name="$1"
    local architecture="$2"
    local greengrass_group_id="$3"
    shift 3

    p6_log_or_run aws robomaker create-robot --name $name --architecture $architecture --greengrass-group-id $greengrass_group_id "$@"
}
