######################################################################
#<
#
# Function:
#	p6_aws_redshift_snapshot_copy_disable(cluster_identifier)
#
#  Args:
#	cluster_identifier - 
#
#>
######################################################################
p6_aws_redshift_snapshot_copy_disable() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift disable-snapshot-copy --cluster-identifier $cluster_identifier "$@"
}