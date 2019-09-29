######################################################################
#<
#
# Function:
#      = p6_aws_ses_bulk_templated_email_send(source, template, destinations)
#
# Arg(s):
#    source - 
#    template - 
#    destinations - 
#
#
#>
######################################################################
p6_aws_ses_bulk_templated_email_send() {
    local source="$1"
    local template="$2"
    local destinations="$3"
    shift 3

    p6_run_write_cmd aws ses send-bulk-templated-email --source $source --template $template --destinations $destinations "$@"
}