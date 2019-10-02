######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_volume_attach(gateway_arn, volume_arn, network_interface_id)
#
#  Args:
#	gateway_arn - 
#	volume_arn - 
#	network_interface_id - 
#
#>
######################################################################
p6_aws_storagegateway_volume_attach() {
    local gateway_arn="$1"
    local volume_arn="$2"
    local network_interface_id="$3"
    shift 3

    p6_run_write_cmd aws storagegateway attach-volume --gateway-arn $gateway_arn --volume-arn $volume_arn --network-interface-id $network_interface_id "$@"
}