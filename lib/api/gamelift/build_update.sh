p6_aws_gamelift_build_update() {
    local build_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-build --build-id $build_id "$@"
}
