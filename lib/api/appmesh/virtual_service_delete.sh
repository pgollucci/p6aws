######################################################################
#<
#
# Function:
#	p6_aws_appmesh_virtual_service_delete(mesh_name, virtual_service_name)
#
#  Args:
#	mesh_name - 
#	virtual_service_name - 
#
#>
######################################################################
p6_aws_appmesh_virtual_service_delete() {
    local mesh_name="$1"
    local virtual_service_name="$2"
    shift 2

    p6_run_write_cmd aws appmesh delete-virtual-service --mesh-name $mesh_name --virtual-service-name $virtual_service_name "$@"
}