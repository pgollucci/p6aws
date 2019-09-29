######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_cluster_delete(db_cluster_identifier)
#
# Arg(s):
#    db_cluster_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_cluster_delete() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}