######################################################################
#<
#
# Function:
#      = p6_aws_support_attachment_describe(attachment_id)
#
# Arg(s):
#    attachment_id - 
#
#
#>
######################################################################
p6_aws_support_attachment_describe() {
    local attachment_id="$1"
    shift 1

    p6_run_read_cmd aws support describe-attachment --attachment-id $attachment_id "$@"
}