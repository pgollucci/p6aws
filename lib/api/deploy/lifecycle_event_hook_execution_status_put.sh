######################################################################
#<
#
# Function:
#	p6_aws_deploy_lifecycle_event_hook_execution_status_put()
#
#>
######################################################################
p6_aws_deploy_lifecycle_event_hook_execution_status_put() {

    p6_run_write_cmd aws deploy put-lifecycle-event-hook-execution-status "$@"
}