p6_aws_elasticache_stop_update_action_batch() {
    local replication_group_ids="$1"
    local service_update_name="$2"
    shift 2

    p6_run_write_cmd aws elasticache batch-stop-update-action --replication-group-ids $replication_group_ids --service-update-name $service_update_name "$@"
}
