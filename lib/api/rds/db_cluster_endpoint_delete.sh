######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_cluster_endpoint_delete(db_cluster_endpoint_identifier)
#
# Arg(s):
#    db_cluster_endpoint_identifier - 
#
#
#>
######################################################################
p6_aws_rds_db_cluster_endpoint_delete() {
    local db_cluster_endpoint_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds delete-db-cluster-endpoint --db-cluster-endpoint-identifier $db_cluster_endpoint_identifier "$@"
}