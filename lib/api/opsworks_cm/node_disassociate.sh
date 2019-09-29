######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_node_disassociate(server_name, node_name)
#
# Arg(s):
#    server_name - 
#    node_name - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_node_disassociate() {
    local server_name="$1"
    local node_name="$2"
    shift 2

    p6_run_write_cmd aws opsworks-cm disassociate-node --server-name $server_name --node-name $node_name "$@"
}