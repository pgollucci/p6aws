p6_aws_appstream_image_builder_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream delete-image-builder --name $name "$@"
}
