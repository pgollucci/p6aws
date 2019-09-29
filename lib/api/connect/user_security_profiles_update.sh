######################################################################
#<
#
# Function:
#      = p6_aws_connect_user_security_profiles_update(security_profile_ids, user_id, instance_id)
#
# Arg(s):
#    security_profile_ids - 
#    user_id - 
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_user_security_profiles_update() {
    local security_profile_ids="$1"
    local user_id="$2"
    local instance_id="$3"
    shift 3

    p6_run_write_cmd aws connect update-user-security-profiles --security-profile-ids $security_profile_ids --user-id $user_id --instance-id $instance_id "$@"
}