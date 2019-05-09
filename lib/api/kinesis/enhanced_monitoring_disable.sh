p6_aws_kinesis_enhanced_monitoring_disable() {
    local stream_name="$1"
    local shard_level_metrics="$2"
    shift 2

    p6_log_or_run aws kinesis disable-enhanced-monitoring --stream-name $stream_name --shard-level-metrics $shard_level_metrics "$@"
}
