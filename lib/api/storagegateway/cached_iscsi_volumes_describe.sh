p6_aws_storagegateway_cached_iscsi_volumes_describe() {
    local volume_arns="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-cached-iscsi-volumes --volume-arns $volume_arns "$@"
}
