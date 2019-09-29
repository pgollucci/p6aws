######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_room_create(room_name)
#
# Arg(s):
#    room_name - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_room_create() {
    local room_name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-room --room-name $room_name "$@"
}