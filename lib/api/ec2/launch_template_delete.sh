######################################################################
#<
#
# Function:
#	p6_aws_ec2_launch_template_delete()
#
#>
######################################################################
p6_aws_ec2_launch_template_delete() {

    p6_run_write_cmd aws ec2 delete-launch-template "$@"
}