######################################################################
#<
#
# Function:
#	p6_aws_iot_ota_update_delete(ota_update_id)
#
#  Args:
#	ota_update_id - 
#
#>
######################################################################
p6_aws_iot_ota_update_delete() {
    local ota_update_id="$1"
    shift 1

    p6_run_write_cmd aws iot delete-ota-update --ota-update-id $ota_update_id "$@"
}