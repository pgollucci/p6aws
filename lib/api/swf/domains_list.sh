######################################################################
#<
#
# Function:
#      = p6_aws_swf_domains_list(registration_status)
#
# Arg(s):
#    registration_status - 
#
#
#>
######################################################################
p6_aws_swf_domains_list() {
    local registration_status="$1"
    shift 1

    p6_run_read_cmd aws swf list-domains --registration-status $registration_status "$@"
}