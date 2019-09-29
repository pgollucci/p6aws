######################################################################
#<
#
# Function:
#      = p6_aws_iot_outgoing_certificates_list()
#
#
#
#>
######################################################################
p6_aws_iot_outgoing_certificates_list() {

    p6_run_read_cmd aws iot list-outgoing-certificates "$@"
}