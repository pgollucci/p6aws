######################################################################
#<
#
# Function:
#	p6_aws_connect_user_create(username, phone_config, security_profile_ids, routing_profile_id, instance_id)
#
#  Args:
#	username - 
#	phone_config - 
#	security_profile_ids - 
#	routing_profile_id - 
#	instance_id - 
#
#>
######################################################################
p6_aws_connect_user_create() {
    local username="$1"
    local phone_config="$2"
    local security_profile_ids="$3"
    local routing_profile_id="$4"
    local instance_id="$5"
    shift 5

    p6_run_write_cmd aws connect create-user --username $username --phone-config $phone_config --security-profile-ids $security_profile_ids --routing-profile-id $routing_profile_id --instance-id $instance_id "$@"
}