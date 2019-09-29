######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_network_profile_get(network_profile_arn)
#
# Arg(s):
#    network_profile_arn - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_network_profile_get() {
    local network_profile_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-network-profile --network-profile-arn $network_profile_arn "$@"
}