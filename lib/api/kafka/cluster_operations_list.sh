######################################################################
#<
#
# Function:
#	p6_aws_kafka_cluster_operations_list(cluster_arn)
#
#  Args:
#	cluster_arn - 
#
#>
######################################################################
p6_aws_kafka_cluster_operations_list() {
    local cluster_arn="$1"
    shift 1

    p6_run_read_cmd aws kafka list-cluster-operations --cluster-arn $cluster_arn "$@"
}