######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_cluster_backtrack(db_cluster_identifier, backtrack_to)
#
# Arg(s):
#    db_cluster_identifier - 
#    backtrack_to - 
#
#
#>
######################################################################
p6_aws_rds_db_cluster_backtrack() {
    local db_cluster_identifier="$1"
    local backtrack_to="$2"
    shift 2

    p6_run_write_cmd aws rds backtrack-db-cluster --db-cluster-identifier $db_cluster_identifier --backtrack-to $backtrack_to "$@"
}