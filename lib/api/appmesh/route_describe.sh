p6_aws_appmesh_route_describe() {
    local mesh_name="$1"
    local route_name="$2"
    local virtual_router_name="$3"
    shift 3

    p6_run_read_cmd aws appmesh describe-route --mesh-name $mesh_name --route-name $route_name --virtual-router-name $virtual_router_name "$@"
}
