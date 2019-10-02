######################################################################
#<
#
# Function:
#	p6_aws_ec2_console_output_get(instance_id)
#
#  Args:
#	instance_id - 
#
#>
######################################################################
p6_aws_ec2_console_output_get() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-console-output --instance-id $instance_id "$@"
}