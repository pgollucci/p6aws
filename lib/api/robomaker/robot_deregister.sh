######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_robot_deregister(fleet, robot)
#
# Arg(s):
#    fleet - 
#    robot - 
#
#
#>
######################################################################
p6_aws_robomaker_robot_deregister() {
    local fleet="$1"
    local robot="$2"
    shift 2

    p6_run_write_cmd aws robomaker deregister-robot --fleet $fleet --robot $robot "$@"
}