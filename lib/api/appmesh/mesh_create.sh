######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_mesh_create(mesh_name)
#
# Arg(s):
#    mesh_name - 
#
#
#>
######################################################################
p6_aws_appmesh_mesh_create() {
    local mesh_name="$1"
    shift 1

    p6_run_write_cmd aws appmesh create-mesh --mesh-name $mesh_name "$@"
}