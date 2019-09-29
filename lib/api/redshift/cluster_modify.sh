######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_modify(cluster_identifier)
#
# Arg(s):
#    cluster_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_modify() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift modify-cluster --cluster-identifier $cluster_identifier "$@"
}