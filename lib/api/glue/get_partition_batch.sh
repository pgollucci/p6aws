######################################################################
#<
#
# Function:
#      = p6_aws_glue_get_partition_batch(database_name, table_name, partitions_to_get)
#
# Arg(s):
#    database_name - 
#    table_name - 
#    partitions_to_get - 
#
#
#>
######################################################################
p6_aws_glue_get_partition_batch() {
    local database_name="$1"
    local table_name="$2"
    local partitions_to_get="$3"
    shift 3

    p6_run_read_cmd aws glue batch-get-partition --database-name $database_name --table-name $table_name --partitions-to-get $partitions_to_get "$@"
}