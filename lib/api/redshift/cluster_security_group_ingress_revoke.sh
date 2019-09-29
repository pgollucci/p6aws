######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_security_group_ingress_revoke(cluster_security_group_name)
#
# Arg(s):
#    cluster_security_group_name - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_security_group_ingress_revoke() {
    local cluster_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws redshift revoke-cluster-security-group-ingress --cluster-security-group-name $cluster_security_group_name "$@"
}