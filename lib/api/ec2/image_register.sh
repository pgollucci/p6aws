######################################################################
#<
#
# Function:
#	p6_aws_ec2_image_register(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_ec2_image_register() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ec2 register-image --name $name "$@"
}