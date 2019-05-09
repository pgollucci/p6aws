p6_aws_gamelift_build_update() {
    local build_id="$1"
    shift 1

    p6_log_or_run aws gamelift update-build --build-id $build_id "$@"
}
