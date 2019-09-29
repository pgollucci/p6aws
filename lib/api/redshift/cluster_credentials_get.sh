######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_credentials_get(db_user, cluster_identifier)
#
# Arg(s):
#    db_user - 
#    cluster_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_credentials_get() {
    local db_user="$1"
    local cluster_identifier="$2"
    shift 2

    p6_run_read_cmd aws redshift get-cluster-credentials --db-user $db_user --cluster-identifier $cluster_identifier "$@"
}