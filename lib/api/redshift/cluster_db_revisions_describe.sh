######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_db_revisions_describe()
#
#>
######################################################################
p6_aws_redshift_cluster_db_revisions_describe() {

    p6_run_read_cmd aws redshift describe-cluster-db-revisions "$@"
}