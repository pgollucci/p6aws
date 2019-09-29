######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_virtual_service_update(mesh_name, spec, virtual_service_name)
#
# Arg(s):
#    mesh_name - 
#    spec - 
#    virtual_service_name - 
#
#
#>
######################################################################
p6_aws_appmesh_virtual_service_update() {
    local mesh_name="$1"
    local spec="$2"
    local virtual_service_name="$3"
    shift 3

    p6_run_write_cmd aws appmesh update-virtual-service --mesh-name $mesh_name --spec $spec --virtual-service-name $virtual_service_name "$@"
}