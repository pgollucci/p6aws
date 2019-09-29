######################################################################
#<
#
# Function:
#      = p6_aws_pinpoint_email_email_send(destination, content)
#
# Arg(s):
#    destination - 
#    content - 
#
#
#>
######################################################################
p6_aws_pinpoint_email_email_send() {
    local destination="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws pinpoint-email send-email --destination $destination --content $content "$@"
}