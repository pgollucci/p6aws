######################################################################
#<
#
# Function:
#	p6_aws_appmesh_virtual_service_describe(mesh_name, virtual_service_name)
#
#  Args:
#	mesh_name - 
#	virtual_service_name - 
#
#>
######################################################################
p6_aws_appmesh_virtual_service_describe() {
    local mesh_name="$1"
    local virtual_service_name="$2"
    shift 2

    p6_run_read_cmd aws appmesh describe-virtual-service --mesh-name $mesh_name --virtual-service-name $virtual_service_name "$@"
}