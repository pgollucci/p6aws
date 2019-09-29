######################################################################
#<
#
# Function:
#      = p6_aws_glue_connection_update(name, connection_input)
#
# Arg(s):
#    name - 
#    connection_input - 
#
#
#>
######################################################################
p6_aws_glue_connection_update() {
    local name="$1"
    local connection_input="$2"
    shift 2

    p6_run_write_cmd aws glue update-connection --name $name --connection-input $connection_input "$@"
}