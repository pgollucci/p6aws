######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_virtual_router_create(mesh_name, spec, virtual_router_name)
#
# Arg(s):
#    mesh_name - 
#    spec - 
#    virtual_router_name - 
#
#
#>
######################################################################
p6_aws_appmesh_virtual_router_create() {
    local mesh_name="$1"
    local spec="$2"
    local virtual_router_name="$3"
    shift 3

    p6_run_write_cmd aws appmesh create-virtual-router --mesh-name $mesh_name --spec $spec --virtual-router-name $virtual_router_name "$@"
}