######################################################################
#<
#
# Function:
#      = p6_aws_iot_mitigation_actions_list()
#
#
#
#>
######################################################################
p6_aws_iot_mitigation_actions_list() {

    p6_run_read_cmd aws iot list-mitigation-actions "$@"
}