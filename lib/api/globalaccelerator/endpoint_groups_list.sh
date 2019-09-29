######################################################################
#<
#
# Function:
#      = p6_aws_globalaccelerator_endpoint_groups_list(listener_arn)
#
# Arg(s):
#    listener_arn - 
#
#
#>
######################################################################
p6_aws_globalaccelerator_endpoint_groups_list() {
    local listener_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator list-endpoint-groups --listener-arn $listener_arn "$@"
}