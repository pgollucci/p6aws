######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_db_revision_modify(cluster_identifier, revision_target)
#
#  Args:
#	cluster_identifier - 
#	revision_target - 
#
#>
######################################################################
p6_aws_redshift_cluster_db_revision_modify() {
    local cluster_identifier="$1"
    local revision_target="$2"
    shift 2

    p6_run_write_cmd aws redshift modify-cluster-db-revision --cluster-identifier $cluster_identifier --revision-target $revision_target "$@"
}