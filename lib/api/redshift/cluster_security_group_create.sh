######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_security_group_create(cluster_security_group_name, description)
#
# Arg(s):
#    cluster_security_group_name - 
#    description - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_security_group_create() {
    local cluster_security_group_name="$1"
    local description="$2"
    shift 2

    p6_run_write_cmd aws redshift create-cluster-security-group --cluster-security-group-name $cluster_security_group_name --description $description "$@"
}