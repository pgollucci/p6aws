p6_aws_opsworks_layer_delete() {
    local layer_id="$1"
    shift 1

    p6_log_or_run aws opsworks delete-layer --layer-id $layer_id "$@"
}
