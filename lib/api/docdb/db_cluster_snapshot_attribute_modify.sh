######################################################################
#<
#
# Function:
#	p6_aws_docdb_db_cluster_snapshot_attribute_modify(db_cluster_snapshot_identifier, attribute_name)
#
#  Args:
#	db_cluster_snapshot_identifier - 
#	attribute_name - 
#
#>
######################################################################
p6_aws_docdb_db_cluster_snapshot_attribute_modify() {
    local db_cluster_snapshot_identifier="$1"
    local attribute_name="$2"
    shift 2

    p6_run_write_cmd aws docdb modify-db-cluster-snapshot-attribute --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier --attribute-name $attribute_name "$@"
}