p6_aws_appstream_image_builder_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream start-image-builder --name $name "$@"
}
