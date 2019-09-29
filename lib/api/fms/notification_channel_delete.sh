######################################################################
#<
#
# Function:
#      = p6_aws_fms_notification_channel_delete()
#
#
#
#>
######################################################################
p6_aws_fms_notification_channel_delete() {

    p6_run_write_cmd aws fms delete-notification-channel "$@"
}