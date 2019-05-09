p6_aws_gamelift_build_delete() {
    local build_id="$1"
    shift 1

    p6_log_or_run aws gamelift delete-build --build-id $build_id "$@"
}
