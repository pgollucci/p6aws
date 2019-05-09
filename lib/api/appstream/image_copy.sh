p6_aws_appstream_image_copy() {
    local source_image_name="$1"
    local destination_image_name="$2"
    local destination_region="$3"
    shift 3

    p6_run_write_cmd aws appstream copy-image --source-image-name $source_image_name --destination-image-name $destination_image_name --destination-region $destination_region "$@"
}
