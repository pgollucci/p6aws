######################################################################
#<
#
# Function:
#      = p6_aws_ses_email_send(from)
#
# Arg(s):
#    from - 
#
#
#>
######################################################################
p6_aws_ses_email_send() {
    local from="$1"
    shift 1

    p6_run_write_cmd aws ses send-email --from $from "$@"
}