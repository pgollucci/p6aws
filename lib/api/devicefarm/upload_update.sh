p6_aws_devicefarm_upload_update() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm update-upload --arn $arn "$@"
}
