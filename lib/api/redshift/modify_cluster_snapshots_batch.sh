######################################################################
#<
#
# Function:
#	p6_aws_redshift_modify_cluster_snapshots_batch(snapshot_identifier_list)
#
#  Args:
#	snapshot_identifier_list - 
#
#>
######################################################################
p6_aws_redshift_modify_cluster_snapshots_batch() {
    local snapshot_identifier_list="$1"
    shift 1

    p6_run_write_cmd aws redshift batch-modify-cluster-snapshots --snapshot-identifier-list $snapshot_identifier_list "$@"
}