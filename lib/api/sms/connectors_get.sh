######################################################################
#<
#
# Function:
#      = p6_aws_sms_connectors_get()
#
#
#
#>
######################################################################
p6_aws_sms_connectors_get() {

    p6_run_read_cmd aws sms get-connectors "$@"
}