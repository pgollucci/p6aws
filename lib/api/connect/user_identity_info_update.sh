p6_aws_connect_user_identity_info_update() {
    local identity_info="$1"
    local user_id="$2"
    local instance_id="$3"
    shift 3

    p6_run_write_cmd aws connect update-user-identity-info --identity-info $identity_info --user-id $user_id --instance-id $instance_id "$@"
}
