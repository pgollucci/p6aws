######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_vpce_configuration_delete(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_vpce_configuration_delete() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm delete-vpce-configuration --arn $arn "$@"
}