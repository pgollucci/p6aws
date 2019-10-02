######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_instance_profile_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_devicefarm_instance_profile_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws devicefarm create-instance-profile --name $name "$@"
}