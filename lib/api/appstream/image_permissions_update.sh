p6_aws_appstream_image_permissions_update() {
    local name="$1"
    local shared_account_id="$2"
    local image_permissions="$3"
    shift 3

    p6_run_write_cmd aws appstream update-image-permissions --name $name --shared-account-id $shared_account_id --image-permissions $image_permissions "$@"
}
