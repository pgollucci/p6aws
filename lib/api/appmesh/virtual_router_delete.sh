######################################################################
#<
#
# Function:
#	p6_aws_appmesh_virtual_router_delete(mesh_name, virtual_router_name)
#
#  Args:
#	mesh_name - 
#	virtual_router_name - 
#
#>
######################################################################
p6_aws_appmesh_virtual_router_delete() {
    local mesh_name="$1"
    local virtual_router_name="$2"
    shift 2

    p6_run_write_cmd aws appmesh delete-virtual-router --mesh-name $mesh_name --virtual-router-name $virtual_router_name "$@"
}