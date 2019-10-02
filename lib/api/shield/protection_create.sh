######################################################################
#<
#
# Function:
#	p6_aws_shield_protection_create(name, resource_arn)
#
#  Args:
#	name - 
#	resource_arn - 
#
#>
######################################################################
p6_aws_shield_protection_create() {
    local name="$1"
    local resource_arn="$2"
    shift 2

    p6_run_write_cmd aws shield create-protection --name $name --resource-arn $resource_arn "$@"
}