p6_aws_gamelift_build_describe() {
    local build_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-build --build-id $build_id "$@"
}
