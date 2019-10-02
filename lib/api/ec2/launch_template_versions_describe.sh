######################################################################
#<
#
# Function:
#	p6_aws_ec2_launch_template_versions_describe()
#
#>
######################################################################
p6_aws_ec2_launch_template_versions_describe() {

    p6_run_read_cmd aws ec2 describe-launch-template-versions "$@"
}