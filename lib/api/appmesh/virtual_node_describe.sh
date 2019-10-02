######################################################################
#<
#
# Function:
#	p6_aws_appmesh_virtual_node_describe(mesh_name, virtual_node_name)
#
#  Args:
#	mesh_name - 
#	virtual_node_name - 
#
#>
######################################################################
p6_aws_appmesh_virtual_node_describe() {
    local mesh_name="$1"
    local virtual_node_name="$2"
    shift 2

    p6_run_read_cmd aws appmesh describe-virtual-node --mesh-name $mesh_name --virtual-node-name $virtual_node_name "$@"
}