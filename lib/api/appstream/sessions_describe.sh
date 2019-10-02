######################################################################
#<
#
# Function:
#	p6_aws_appstream_sessions_describe(stack_name, fleet_name)
#
#  Args:
#	stack_name - 
#	fleet_name - 
#
#>
######################################################################
p6_aws_appstream_sessions_describe() {
    local stack_name="$1"
    local fleet_name="$2"
    shift 2

    p6_run_read_cmd aws appstream describe-sessions --stack-name $stack_name --fleet-name $fleet_name "$@"
}