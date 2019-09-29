######################################################################
#<
#
# Function:
#      = p6_aws_ec2_network_interface_detach(attachment_id)
#
# Arg(s):
#    attachment_id - 
#
#
#>
######################################################################
p6_aws_ec2_network_interface_detach() {
    local attachment_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 detach-network-interface --attachment-id $attachment_id "$@"
}