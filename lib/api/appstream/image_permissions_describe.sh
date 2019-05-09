p6_aws_appstream_image_permissions_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws appstream describe-image-permissions --name $name "$@"
}
