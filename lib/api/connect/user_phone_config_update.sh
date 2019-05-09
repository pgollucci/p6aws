p6_aws_connect_user_phone_config_update() {
    local phone_config="$1"
    local user_id="$2"
    local instance_id="$3"
    shift 3

    p6_run_write_cmd aws connect update-user-phone-config --phone-config $phone_config --user-id $user_id --instance-id $instance_id "$@"
}
