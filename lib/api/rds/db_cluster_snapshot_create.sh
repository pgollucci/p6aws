######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_cluster_snapshot_create(db_cluster_snapshot_identifier, db_cluster_identifier)
#
# Arg(s):
#    db_cluster_snapshot_identifier - 
#    db_cluster_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_cluster_snapshot_create() {
    local db_cluster_snapshot_identifier="$1"
    local db_cluster_identifier="$2"
    shift 2

    p6_run_write_cmd aws rds create-db-cluster-snapshot --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier --db-cluster-identifier $db_cluster_identifier "$@"
}