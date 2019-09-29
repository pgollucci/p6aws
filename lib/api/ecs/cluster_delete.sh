######################################################################
#<
#
# Function:
#      = p6_aws_ecs_cluster_delete(cluster)
#
# Arg(s):
#    cluster - 
#
#
#>
######################################################################
p6_aws_ecs_cluster_delete() {
    local cluster="$1"
    shift 1

    p6_run_write_cmd aws ecs delete-cluster --cluster $cluster "$@"
}