######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_smart_home_appliance_discovery_start(room_arn)
#
# Arg(s):
#    room_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_smart_home_appliance_discovery_start() {
    local room_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness start-smart-home-appliance-discovery --room-arn $room_arn "$@"
}