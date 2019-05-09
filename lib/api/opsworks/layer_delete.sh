p6_aws_opsworks_layer_delete() {
    local layer_id="$1"
    shift 1

    p6_run_write_cmd aws opsworks delete-layer --layer-id $layer_id "$@"
}
