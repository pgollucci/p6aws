######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_create(cluster_identifier, node_type, master_username, master_user_password)
#
# Arg(s):
#    cluster_identifier - 
#    node_type - 
#    master_username - 
#    master_user_password - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_create() {
    local cluster_identifier="$1"
    local node_type="$2"
    local master_username="$3"
    local master_user_password="$4"
    shift 4

    p6_run_write_cmd aws redshift create-cluster --cluster-identifier $cluster_identifier --node-type $node_type --master-username $master_username --master-user-password $master_user_password "$@"
}