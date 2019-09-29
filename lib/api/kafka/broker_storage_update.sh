######################################################################
#<
#
# Function:
#      = p6_aws_kafka_broker_storage_update(cluster_arn, current_version, target_broker_ebs_volume_info)
#
# Arg(s):
#    cluster_arn - 
#    current_version - 
#    target_broker_ebs_volume_info - 
#
#
#>
######################################################################
p6_aws_kafka_broker_storage_update() {
    local cluster_arn="$1"
    local current_version="$2"
    local target_broker_ebs_volume_info="$3"
    shift 3

    p6_run_write_cmd aws kafka update-broker-storage --cluster-arn $cluster_arn --current-version $current_version --target-broker-ebs-volume-info $target_broker_ebs_volume_info "$@"
}