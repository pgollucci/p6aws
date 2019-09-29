######################################################################
#<
#
# Function:
#      = p6_aws_ec2_launch_template_create(launch_template_name, launch_template_data)
#
# Arg(s):
#    launch_template_name - 
#    launch_template_data - 
#
#
#>
######################################################################
p6_aws_ec2_launch_template_create() {
    local launch_template_name="$1"
    local launch_template_data="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-launch-template --launch-template-name $launch_template_name --launch-template-data $launch_template_data "$@"
}