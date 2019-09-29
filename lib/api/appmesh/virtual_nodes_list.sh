######################################################################
#<
#
# Function:
#      = p6_aws_appmesh_virtual_nodes_list(mesh_name)
#
# Arg(s):
#    mesh_name - 
#
#
#>
######################################################################
p6_aws_appmesh_virtual_nodes_list() {
    local mesh_name="$1"
    shift 1

    p6_run_read_cmd aws appmesh list-virtual-nodes --mesh-name $mesh_name "$@"
}