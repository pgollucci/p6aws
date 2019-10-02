######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_snapshot_copy(source_snapshot_identifier, target_snapshot_identifier)
#
#  Args:
#	source_snapshot_identifier - 
#	target_snapshot_identifier - 
#
#>
######################################################################
p6_aws_redshift_cluster_snapshot_copy() {
    local source_snapshot_identifier="$1"
    local target_snapshot_identifier="$2"
    shift 2

    p6_run_write_cmd aws redshift copy-cluster-snapshot --source-snapshot-identifier $source_snapshot_identifier --target-snapshot-identifier $target_snapshot_identifier "$@"
}