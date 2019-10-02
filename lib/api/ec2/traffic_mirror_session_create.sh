######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_session_create(network_interface_id, traffic_mirror_target_id, traffic_mirror_filter_id, session_number)
#
#  Args:
#	network_interface_id - 
#	traffic_mirror_target_id - 
#	traffic_mirror_filter_id - 
#	session_number - 
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_session_create() {
    local network_interface_id="$1"
    local traffic_mirror_target_id="$2"
    local traffic_mirror_filter_id="$3"
    local session_number="$4"
    shift 4

    p6_run_write_cmd aws ec2 create-traffic-mirror-session --network-interface-id $network_interface_id --traffic-mirror-target-id $traffic_mirror_target_id --traffic-mirror-filter-id $traffic_mirror_filter_id --session-number $session_number "$@"
}