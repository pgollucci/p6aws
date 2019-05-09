p6_aws_gamelift_build_upload() {
    local name="$1"
    local build_version="$2"
    local build_root="$3"
    shift 3

    p6_run_write_cmd aws gamelift upload-build --name $name --build-version $build_version --build-root $build_root "$@"
}
