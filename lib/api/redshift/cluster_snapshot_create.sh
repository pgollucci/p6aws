######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_snapshot_create(snapshot_identifier, cluster_identifier)
#
# Arg(s):
#    snapshot_identifier - 
#    cluster_identifier - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_snapshot_create() {
    local snapshot_identifier="$1"
    local cluster_identifier="$2"
    shift 2

    p6_run_write_cmd aws redshift create-cluster-snapshot --snapshot-identifier $snapshot_identifier --cluster-identifier $cluster_identifier "$@"
}