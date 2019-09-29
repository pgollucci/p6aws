######################################################################
#<
#
# Function:
#      = p6_aws_connect_user_routing_profile_update(routing_profile_id, user_id, instance_id)
#
# Arg(s):
#    routing_profile_id - 
#    user_id - 
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_user_routing_profile_update() {
    local routing_profile_id="$1"
    local user_id="$2"
    local instance_id="$3"
    shift 3

    p6_run_write_cmd aws connect update-user-routing-profile --routing-profile-id $routing_profile_id --user-id $user_id --instance-id $instance_id "$@"
}