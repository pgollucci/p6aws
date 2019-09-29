######################################################################
#<
#
# Function:
#      = p6_aws_ec2_launch_template_data_get(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_ec2_launch_template_data_get() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 get-launch-template-data --instance-id $instance_id "$@"
}