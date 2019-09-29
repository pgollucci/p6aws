######################################################################
#<
#
# Function:
#      = p6_aws_redshift_delete_cluster_snapshots_batch(identifiers)
#
# Arg(s):
#    identifiers - 
#
#
#>
######################################################################
p6_aws_redshift_delete_cluster_snapshots_batch() {
    local identifiers="$1"
    shift 1

    p6_run_write_cmd aws redshift batch-delete-cluster-snapshots --identifiers $identifiers "$@"
}