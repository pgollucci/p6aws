######################################################################
#<
#
# Function:
#      = p6_aws_opsworks_cm_node_associate(server_name, node_name, engine_attributes)
#
# Arg(s):
#    server_name - 
#    node_name - 
#    engine_attributes - 
#
#
#>
######################################################################
p6_aws_opsworks_cm_node_associate() {
    local server_name="$1"
    local node_name="$2"
    local engine_attributes="$3"
    shift 3

    p6_run_write_cmd aws opsworks-cm associate-node --server-name $server_name --node-name $node_name --engine-attributes $engine_attributes "$@"
}