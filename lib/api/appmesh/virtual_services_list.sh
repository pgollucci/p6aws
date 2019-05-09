p6_aws_appmesh_virtual_services_list() {
    local mesh_name="$1"
    shift 1

    p6_run_read_cmd aws appmesh list-virtual-services --mesh-name $mesh_name "$@"
}
