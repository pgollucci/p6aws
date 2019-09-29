######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_mesh_update(mesh_name)
#
# Arg(s):
#    mesh_name - 
#
#
#>
######################################################################
p6_aws_appmesh_mesh_update() {
    local mesh_name="$1"
    shift 1

    p6_run_write_cmd aws appmesh update-mesh --mesh-name $mesh_name "$@"
}