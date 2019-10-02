######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_voice_channel_get(application_id)
#
#  Args:
#	application_id - 
#
#>
######################################################################
p6_aws_pinpoint_voice_channel_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-voice-channel --application-id $application_id "$@"
}