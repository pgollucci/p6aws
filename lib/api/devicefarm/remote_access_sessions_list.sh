p6_aws_devicefarm_remote_access_sessions_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-remote-access-sessions --arn $arn "$@"
}
