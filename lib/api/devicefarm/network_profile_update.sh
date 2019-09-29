######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_network_profile_update(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_network_profile_update() {
    local arn="$1"
    shift 1

    p6_run_write_cmd aws devicefarm update-network-profile --arn $arn "$@"
}