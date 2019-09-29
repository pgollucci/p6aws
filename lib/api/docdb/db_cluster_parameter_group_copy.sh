######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_cluster_parameter_group_copy(source_db_cluster_parameter_group_identifier, target_db_cluster_parameter_group_identifier, target_db_cluster_parameter_group_description)
#
# Arg(s):
#    source_db_cluster_parameter_group_identifier - 
#    target_db_cluster_parameter_group_identifier - 
#    target_db_cluster_parameter_group_description - 
#
#
#>
######################################################################
p6_aws_docdb_db_cluster_parameter_group_copy() {
    local source_db_cluster_parameter_group_identifier="$1"
    local target_db_cluster_parameter_group_identifier="$2"
    local target_db_cluster_parameter_group_description="$3"
    shift 3

    p6_run_write_cmd aws docdb copy-db-cluster-parameter-group --source-db-cluster-parameter-group-identifier $source_db_cluster_parameter_group_identifier --target-db-cluster-parameter-group-identifier $target_db_cluster_parameter_group_identifier --target-db-cluster-parameter-group-description $target_db_cluster_parameter_group_description "$@"
}