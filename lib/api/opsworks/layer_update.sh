p6_aws_opsworks_layer_update() {
    local layer_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks update-layer --layer-id $layer_id "$@"
}
