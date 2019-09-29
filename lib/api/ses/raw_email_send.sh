######################################################################
#<
#
# Function:
#      = p6_aws_ses_raw_email_send(raw_message)
#
# Arg(s):
#    raw_message - 
#
#
#>
######################################################################
p6_aws_ses_raw_email_send() {
    local raw_message="$1"
    shift 1

    p6_run_write_cmd aws ses send-raw-email --raw-message $raw_message "$@"
}