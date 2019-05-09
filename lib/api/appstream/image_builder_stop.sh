p6_aws_appstream_image_builder_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream stop-image-builder --name $name "$@"
}
