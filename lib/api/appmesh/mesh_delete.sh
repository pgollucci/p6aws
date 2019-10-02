######################################################################
#<
#
# Function:
#	p6_aws_appmesh_mesh_delete(mesh_name)
#
#  Args:
#	mesh_name - 
#
#>
######################################################################
p6_aws_appmesh_mesh_delete() {
    local mesh_name="$1"
    shift 1

    p6_run_write_cmd aws appmesh delete-mesh --mesh-name $mesh_name "$@"
}