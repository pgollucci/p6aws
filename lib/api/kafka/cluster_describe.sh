######################################################################
#<
#
# Function:
#      = p6_aws_kafka_cluster_describe(cluster_arn)
#
# Arg(s):
#    cluster_arn - 
#
#
#>
######################################################################
p6_aws_kafka_cluster_describe() {
    local cluster_arn="$1"
    shift 1

    p6_run_read_cmd aws kafka describe-cluster --cluster-arn $cluster_arn "$@"
}