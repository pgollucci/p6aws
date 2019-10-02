######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_volume_recovery_points_list(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_volume_recovery_points_list() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway list-volume-recovery-points --gateway-arn $gateway_arn "$@"
}