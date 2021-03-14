# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_ec2_instance_connect_ssh_public_key_send(instance_id)
#
#  Args:
#	instance_id -
#
#>
######################################################################
p6_aws_svc_ec2_instance_connect_ssh_public_key_send() {
    local instance_id="$1"

    local ami_name
    local user
    local az

    ami_name=$(p6_aws_svc_ec2_ami_name_from_instance_id "$instance_id")
    user=$(p6_aws_svc_ec2_user_from_ami_name "$ami_name")
    az=$(p6_aws_svc_ec2_availability_zone "$instance_id")

    local key
    key="file://$HOME/.ssh/pgollucci.pub"

    p6_aws_cli_cmd ec2-instance-connect send-ssh-public-key \
        --instance-id "$instance_id" \
        --instance-os-user "$user" \
        --ssh-public-key "$key" \
        --availability-zone "$az"
}
