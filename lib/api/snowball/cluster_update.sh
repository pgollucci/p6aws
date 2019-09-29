######################################################################
#<
#
# Function:
#      = p6_aws_snowball_cluster_update(cluster_id)
#
# Arg(s):
#    cluster_id - 
#
#
#>
######################################################################
p6_aws_snowball_cluster_update() {
    local cluster_id="$1"
    shift 1

    p6_run_write_cmd aws snowball update-cluster --cluster-id $cluster_id "$@"
}