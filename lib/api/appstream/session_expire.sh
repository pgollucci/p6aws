######################################################################
#<
#
# Function:
#      = p6_aws_appstream_session_expire(session_id)
#
# Arg(s):
#    session_id - 
#
#
#>
######################################################################
p6_aws_appstream_session_expire() {
    local session_id="$1"
    shift 1

    p6_run_write_cmd aws appstream expire-session --session-id $session_id "$@"
}