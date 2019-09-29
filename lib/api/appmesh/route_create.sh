######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_route_create(mesh_name, route_name, spec, virtual_router_name)
#
# Arg(s):
#    mesh_name - 
#    route_name - 
#    spec - 
#    virtual_router_name - 
#
#
#>
######################################################################
p6_aws_appmesh_route_create() {
    local mesh_name="$1"
    local route_name="$2"
    local spec="$3"
    local virtual_router_name="$4"
    shift 4

    p6_run_write_cmd aws appmesh create-route --mesh-name $mesh_name --route-name $route_name --spec $spec --virtual-router-name $virtual_router_name "$@"
}