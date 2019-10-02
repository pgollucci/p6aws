######################################################################
#<
#
# Function:
#	p6_aws_cloud9_environment_ec2_create(name, instance_type)
#
#  Args:
#	name - 
#	instance_type - 
#
#>
######################################################################
p6_aws_cloud9_environment_ec2_create() {
    local name="$1"
    local instance_type="$2"
    shift 2

    p6_run_write_cmd aws cloud9 create-environment-ec2 --name $name --instance-type $instance_type "$@"
}