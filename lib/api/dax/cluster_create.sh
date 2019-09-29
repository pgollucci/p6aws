######################################################################
#<
#
# Function:
#      = p6_aws_dax_cluster_create(cluster_name, node_type, replication_factor, iam_role_arn)
#
# Arg(s):
#    cluster_name - 
#    node_type - 
#    replication_factor - 
#    iam_role_arn - 
#
#
#>
######################################################################
p6_aws_dax_cluster_create() {
    local cluster_name="$1"
    local node_type="$2"
    local replication_factor="$3"
    local iam_role_arn="$4"
    shift 4

    p6_run_write_cmd aws dax create-cluster --cluster-name $cluster_name --node-type $node_type --replication-factor $replication_factor --iam-role-arn $iam_role_arn "$@"
}