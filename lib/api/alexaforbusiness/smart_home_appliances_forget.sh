######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_smart_home_appliances_forget(room_arn)
#
#  Args:
#	room_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_smart_home_appliances_forget() {
    local room_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness forget-smart-home-appliances --room-arn $room_arn "$@"
}