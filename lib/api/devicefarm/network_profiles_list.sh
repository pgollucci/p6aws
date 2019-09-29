######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_network_profiles_list(arn)
#
# Arg(s):
#    arn - 
#
#
#>
######################################################################
p6_aws_devicefarm_network_profiles_list() {
    local arn="$1"
    shift 1

    p6_run_read_cmd aws devicefarm list-network-profiles --arn $arn "$@"
}