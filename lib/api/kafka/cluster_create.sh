######################################################################
#<
#
# Function:
#	p6_aws_kafka_cluster_create(broker_node_group_info, cluster_name, kafka_version, number_of_broker_nodes)
#
#  Args:
#	broker_node_group_info - 
#	cluster_name - 
#	kafka_version - 
#	number_of_broker_nodes - 
#
#>
######################################################################
p6_aws_kafka_cluster_create() {
    local broker_node_group_info="$1"
    local cluster_name="$2"
    local kafka_version="$3"
    local number_of_broker_nodes="$4"
    shift 4

    p6_run_write_cmd aws kafka create-cluster --broker-node-group-info $broker_node_group_info --cluster-name $cluster_name --kafka-version $kafka_version --number-of-broker-nodes $number_of_broker_nodes "$@"
}