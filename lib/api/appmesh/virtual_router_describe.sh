p6_aws_appmesh_virtual_router_describe() {
    local mesh_name="$1"
    local virtual_router_name="$2"
    shift 2

    p6_run_read_cmd aws appmesh describe-virtual-router --mesh-name $mesh_name --virtual-router-name $virtual_router_name "$@"
}
