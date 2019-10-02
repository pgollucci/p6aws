######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_network_profile_create(network_profile_name, ssid, security_type)
#
#  Args:
#	network_profile_name - 
#	ssid - 
#	security_type - 
#
#>
######################################################################
p6_aws_alexaforbusiness_network_profile_create() {
    local network_profile_name="$1"
    local ssid="$2"
    local security_type="$3"
    shift 3

    p6_run_write_cmd aws alexaforbusiness create-network-profile --network-profile-name $network_profile_name --ssid $ssid --security-type $security_type "$@"
}