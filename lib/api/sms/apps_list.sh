######################################################################
#<
#
# Function:
#      = p6_aws_sms_apps_list()
#
#
#
#>
######################################################################
p6_aws_sms_apps_list() {

    p6_run_read_cmd aws sms list-apps "$@"
}