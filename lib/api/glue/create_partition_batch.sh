######################################################################
#<
#
# Function:
#	p6_aws_glue_create_partition_batch(database_name, table_name, partition_input_list)
#
#  Args:
#	database_name - 
#	table_name - 
#	partition_input_list - 
#
#>
######################################################################
p6_aws_glue_create_partition_batch() {
    local database_name="$1"
    local table_name="$2"
    local partition_input_list="$3"
    shift 3

    p6_run_write_cmd aws glue batch-create-partition --database-name $database_name --table-name $table_name --partition-input-list $partition_input_list "$@"
}