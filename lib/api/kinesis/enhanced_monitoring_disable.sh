######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_enhanced_monitoring_disable(stream_name, shard_level_metrics)
#
# Arg(s):
#    stream_name - 
#    shard_level_metrics - 
#
#
#>
######################################################################
p6_aws_kinesis_enhanced_monitoring_disable() {
    local stream_name="$1"
    local shard_level_metrics="$2"
    shift 2

    p6_run_write_cmd aws kinesis disable-enhanced-monitoring --stream-name $stream_name --shard-level-metrics $shard_level_metrics "$@"
}