######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_snapshot_delete(snapshot_identifier)
#
# Arg(s):
#    snapshot_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_snapshot_delete() {
    local snapshot_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-cluster-snapshot --snapshot-identifier $snapshot_identifier "$@"
}