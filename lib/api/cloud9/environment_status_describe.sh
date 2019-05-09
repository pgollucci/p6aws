p6_aws_cloud9_environment_status_describe() {
    local environment_id="$1"
    shift 1

    p6_run_read_cmd aws cloud9 describe-environment-status --environment-id $environment_id "$@"
}
