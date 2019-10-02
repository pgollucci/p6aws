######################################################################
#<
#
# Function:
#	p6_aws_kafka_cluster_configuration_update(cluster_arn, configuration_info, current_version)
#
#  Args:
#	cluster_arn - 
#	configuration_info - 
#	current_version - 
#
#>
######################################################################
p6_aws_kafka_cluster_configuration_update() {
    local cluster_arn="$1"
    local configuration_info="$2"
    local current_version="$3"
    shift 3

    p6_run_write_cmd aws kafka update-cluster-configuration --cluster-arn $cluster_arn --configuration-info $configuration_info --current-version $current_version "$@"
}