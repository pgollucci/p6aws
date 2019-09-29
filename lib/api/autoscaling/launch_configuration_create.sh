######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_launch_configuration_create(launch_configuration_name)
#
# Arg(s):
#    launch_configuration_name - 
#
#
#>
######################################################################
p6_aws_autoscaling_launch_configuration_create() {
    local launch_configuration_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling create-launch-configuration --launch-configuration-name $launch_configuration_name "$@"
}