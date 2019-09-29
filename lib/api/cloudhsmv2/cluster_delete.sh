######################################################################
#<
#
# Function:
#      = p6_aws_cloudhsmv2_cluster_delete(cluster_id)
#
# Arg(s):
#    cluster_id - 
#
#
#>
######################################################################
p6_aws_cloudhsmv2_cluster_delete() {
    local cluster_id="$1"
    shift 1

    p6_run_write_cmd aws cloudhsmv2 delete-cluster --cluster-id $cluster_id "$@"
}