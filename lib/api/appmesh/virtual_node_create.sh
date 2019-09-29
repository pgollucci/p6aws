######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_virtual_node_create(mesh_name, spec, virtual_node_name)
#
# Arg(s):
#    mesh_name - 
#    spec - 
#    virtual_node_name - 
#
#
#>
######################################################################
p6_aws_appmesh_virtual_node_create() {
    local mesh_name="$1"
    local spec="$2"
    local virtual_node_name="$3"
    shift 3

    p6_run_write_cmd aws appmesh create-virtual-node --mesh-name $mesh_name --spec $spec --virtual-node-name $virtual_node_name "$@"
}