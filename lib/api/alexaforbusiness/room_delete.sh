######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_room_delete()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_room_delete() {

    p6_run_write_cmd aws alexaforbusiness delete-room "$@"
}