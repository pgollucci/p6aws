######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_cluster_start(db_cluster_identifier)
#
# Arg(s):
#    db_cluster_identifier - 
#
#
#>
######################################################################
p6_aws_docdb_db_cluster_start() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws docdb start-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}