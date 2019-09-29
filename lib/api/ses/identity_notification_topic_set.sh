######################################################################
#<
#
# Function:
#      = p6_aws_ses_identity_notification_topic_set(identity, notification_type)
#
# Arg(s):
#    identity - 
#    notification_type - 
#
#
#>
######################################################################
p6_aws_ses_identity_notification_topic_set() {
    local identity="$1"
    local notification_type="$2"
    shift 2

    p6_run_write_cmd aws ses set-identity-notification-topic --identity $identity --notification-type $notification_type "$@"
}