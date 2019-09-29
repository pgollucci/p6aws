######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_cluster_create(db_cluster_identifier, engine, master_username, master_user_password)
#
# Arg(s):
#    db_cluster_identifier - 
#    engine - 
#    master_username - 
#    master_user_password - 
#
#
#>
######################################################################
p6_aws_docdb_db_cluster_create() {
    local db_cluster_identifier="$1"
    local engine="$2"
    local master_username="$3"
    local master_user_password="$4"
    shift 4

    p6_run_write_cmd aws docdb create-db-cluster --db-cluster-identifier $db_cluster_identifier --engine $engine --master-username $master_username --master-user-password $master_user_password "$@"
}