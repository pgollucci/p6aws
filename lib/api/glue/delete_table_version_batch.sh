######################################################################
#<
#
# Function:
#	p6_aws_glue_delete_table_version_batch(database_name, table_name, version_ids)
#
#  Args:
#	database_name - 
#	table_name - 
#	version_ids - 
#
#>
######################################################################
p6_aws_glue_delete_table_version_batch() {
    local database_name="$1"
    local table_name="$2"
    local version_ids="$3"
    shift 3

    p6_run_write_cmd aws glue batch-delete-table-version --database-name $database_name --table-name $table_name --version-ids $version_ids "$@"
}