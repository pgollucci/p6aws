######################################################################
#<
#
# Function:
#	p6_aws_servicediscovery_service_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_servicediscovery_service_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws servicediscovery create-service --name $name "$@"
}