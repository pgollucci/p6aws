######################################################################
#<
#
# Function:
#      = p6_aws_glue_delete_connection_batch(connection_name_list)
#
# Arg(s):
#    connection_name_list - 
#
#
#>
######################################################################
p6_aws_glue_delete_connection_batch() {
    local connection_name_list="$1"
    shift 1

    p6_run_write_cmd aws glue batch-delete-connection --connection-name-list $connection_name_list "$@"
}