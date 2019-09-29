######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_device_pool_update(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_device_pool_update() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm update-device-pool --arn $arn "$@"
}