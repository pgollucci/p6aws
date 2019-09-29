######################################################################
#<
#
# Function:
#      = p6_aws_ec2_launch_template_version_create(launch_template_data)
#
# Arg(s):
#    launch_template_data - 
#
#
#>
######################################################################
p6_aws_ec2_launch_template_version_create() {
    local launch_template_data="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-launch-template-version --launch-template-data $launch_template_data "$@"
}