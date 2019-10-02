######################################################################
#<
#
# Function:
#	p6_aws_appmesh_mesh_describe(mesh_name)
#
#  Args:
#	mesh_name - 
#
#>
######################################################################
p6_aws_appmesh_mesh_describe() {
    local mesh_name="$1"
    shift 1

    p6_run_read_cmd aws appmesh describe-mesh --mesh-name $mesh_name "$@"
}