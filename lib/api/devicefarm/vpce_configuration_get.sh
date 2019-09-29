######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_vpce_configuration_get(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_vpce_configuration_get() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm get-vpce-configuration --arn $arn "$@"
}