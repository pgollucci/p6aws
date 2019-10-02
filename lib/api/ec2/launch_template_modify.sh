######################################################################
#<
#
# Function:
#	p6_aws_ec2_launch_template_modify()
#
#>
######################################################################
p6_aws_ec2_launch_template_modify() {

    p6_run_write_cmd aws ec2 modify-launch-template "$@"
}