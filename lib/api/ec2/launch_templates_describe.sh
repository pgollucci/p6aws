######################################################################
#<
#
# Function:
#	p6_aws_ec2_launch_templates_describe()
#
#>
######################################################################
p6_aws_ec2_launch_templates_describe() {

    p6_run_read_cmd aws ec2 describe-launch-templates "$@"
}