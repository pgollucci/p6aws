######################################################################
#<
#
# Function:
#      = p6_aws_sms_connector_disassociate(connector_id)
#
# Arg(s):
#    connector_id - 
#
#
#>
######################################################################
p6_aws_sms_connector_disassociate() {
    local connector_id="$1"
    shift 1

    p6_run_write_cmd aws sms disassociate-connector --connector-id $connector_id "$@"
}