######################################################################
#<
#
# Function:
#	p6_aws_appstream_streaming_url_create(stack_name, fleet_name, user_id)
#
#  Args:
#	stack_name - 
#	fleet_name - 
#	user_id - 
#
#>
######################################################################
p6_aws_appstream_streaming_url_create() {
    local stack_name="$1"
    local fleet_name="$2"
    local user_id="$3"
    shift 3

    p6_run_write_cmd aws appstream create-streaming-url --stack-name $stack_name --fleet-name $fleet_name --user-id $user_id "$@"
}