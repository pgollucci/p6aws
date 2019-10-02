######################################################################
#<
#
# Function:
#	p6_aws_iot_stream(ota_update_id)
#
#  Args:
#	ota_update_id - 
#
#>
######################################################################
p6_aws_iot_stream() {
        local ota_update_id="$1"
        shift 1

    cond_log_and_run aws iot delete-ota-update --ota-update-id $ota_update_id --delete-stream "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_iot_delete_aws_job(ota_update_id)
#
#  Args:
#	ota_update_id - 
#
#>
######################################################################
p6_aws_iot_delete_aws_job() {
        local ota_update_id="$1"
        shift 1

    cond_log_and_run aws iot delete-ota-update --ota-update-id $ota_update_id --force-delete-aws-job "$@"
}