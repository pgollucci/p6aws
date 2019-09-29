######################################################################
#<
#
# Function:
#      = p6_aws_glue_connection_delete(connection_name)
#
# Arg(s):
#    connection_name - 
#
#
#>
######################################################################
p6_aws_glue_connection_delete() {
    local connection_name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-connection --connection-name $connection_name "$@"
}