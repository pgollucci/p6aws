######################################################################
#<
#
# Function:
#      = p6_aws_ecs_poll_endpoint_discover()
#
#
#
#>
######################################################################
p6_aws_ecs_poll_endpoint_discover() {

    p6_run_write_cmd aws ecs discover-poll-endpoint "$@"
}