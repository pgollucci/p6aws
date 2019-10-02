######################################################################
#<
#
# Function:
#	p6_aws_appmesh_routes_list(mesh_name, virtual_router_name)
#
#  Args:
#	mesh_name - 
#	virtual_router_name - 
#
#>
######################################################################
p6_aws_appmesh_routes_list() {
    local mesh_name="$1"
    local virtual_router_name="$2"
    shift 2

    p6_run_read_cmd aws appmesh list-routes --mesh-name $mesh_name --virtual-router-name $virtual_router_name "$@"
}