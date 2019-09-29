######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_robot_create(name, architecture, greengrass_group_id)
#
# Arg(s):
#    name - 
#    architecture - 
#    greengrass_group_id - 
#
#
#>
######################################################################
p6_aws_robomaker_robot_create() {
    local name="$1"
    local architecture="$2"
    local greengrass_group_id="$3"
    shift 3

    p6_run_write_cmd aws robomaker create-robot --name $name --architecture $architecture --greengrass-group-id $greengrass_group_id "$@"
}