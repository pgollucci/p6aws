######################################################################
#<
#
# Function:
#	p6_aws_glue_partition_get(database_name, table_name, partition_values)
#
#  Args:
#	database_name - 
#	table_name - 
#	partition_values - 
#
#>
######################################################################
p6_aws_glue_partition_get() {
    local database_name="$1"
    local table_name="$2"
    local partition_values="$3"
    shift 3

    p6_run_read_cmd aws glue get-partition --database-name $database_name --table-name $table_name --partition-values $partition_values "$@"
}