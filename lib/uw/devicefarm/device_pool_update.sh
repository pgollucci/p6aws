######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_max_devices(arn)
#
#  Args:
#	arn - 
#
#>
######################################################################
p6_aws_devicefarm_max_devices() {
        local arn="$1"
        shift 1

    cond_log_and_run aws devicefarm update-device-pool --arn $arn --clear-max-devices "$@"
}