######################################################################
#<
#
# Function:
#	p6_aws_appmesh_route_delete(mesh_name, route_name, virtual_router_name)
#
#  Args:
#	mesh_name - 
#	route_name - 
#	virtual_router_name - 
#
#>
######################################################################
p6_aws_appmesh_route_delete() {
    local mesh_name="$1"
    local route_name="$2"
    local virtual_router_name="$3"
    shift 3

    p6_run_write_cmd aws appmesh delete-route --mesh-name $mesh_name --route-name $route_name --virtual-router-name $virtual_router_name "$@"
}