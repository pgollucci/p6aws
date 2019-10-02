######################################################################
#<
#
# Function:
#	p6_aws_appmesh_virtual_node_delete(mesh_name, virtual_node_name)
#
#  Args:
#	mesh_name - 
#	virtual_node_name - 
#
#>
######################################################################
p6_aws_appmesh_virtual_node_delete() {
    local mesh_name="$1"
    local virtual_node_name="$2"
    shift 2

    p6_run_write_cmd aws appmesh delete-virtual-node --mesh-name $mesh_name --virtual-node-name $virtual_node_name "$@"
}