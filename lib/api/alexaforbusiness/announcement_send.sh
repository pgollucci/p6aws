######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_announcement_send(room_filters, content)
#
# Arg(s):
#    room_filters - 
#    content - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_announcement_send() {
    local room_filters="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws alexaforbusiness send-announcement --room-filters $room_filters --content $content "$@"
}