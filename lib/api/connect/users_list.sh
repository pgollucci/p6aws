######################################################################
#<
#
# Function:
#      = p6_aws_connect_users_list(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_users_list() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws connect list-users --instance-id $instance_id "$@"
}