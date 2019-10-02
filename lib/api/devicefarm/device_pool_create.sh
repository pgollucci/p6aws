######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_device_pool_create(project_arn, name, rules)
#
#  Args:
#	project_arn - 
#	name - 
#	rules - 
#
#>
######################################################################
p6_aws_devicefarm_device_pool_create() {
    local project_arn="$1"
    local name="$2"
    local rules="$3"
    shift 3

    p6_run_write_cmd aws devicefarm create-device-pool --project-arn $project_arn --name $name --rules $rules "$@"
}