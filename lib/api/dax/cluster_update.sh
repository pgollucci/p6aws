######################################################################
#<
#
# Function:
#      = p6_aws_dax_cluster_update(cluster_name)
#
# Arg(s):
#    cluster_name - 
#
#
#>
######################################################################
p6_aws_dax_cluster_update() {
    local cluster_name="$1"
    shift 1

    p6_run_write_cmd aws dax update-cluster --cluster-name $cluster_name "$@"
}