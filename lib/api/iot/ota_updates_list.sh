######################################################################
#<
#
# Function:
#      = p6_aws_iot_ota_updates_list()
#
#
#
#>
######################################################################
p6_aws_iot_ota_updates_list() {

    p6_run_read_cmd aws iot list-ota-updates "$@"
}