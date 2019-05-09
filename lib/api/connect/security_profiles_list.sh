p6_aws_connect_security_profiles_list() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws connect list-security-profiles --instance-id $instance_id "$@"
}
