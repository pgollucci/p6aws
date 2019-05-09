p6_aws_gamelift_build_delete() {
    local build_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-build --build-id $build_id "$@"
}
