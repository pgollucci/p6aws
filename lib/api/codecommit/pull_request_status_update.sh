######################################################################
#<
#
# Function:
#	p6_aws_codecommit_pull_request_status_update(pull_request_id, pull_request_status)
#
#  Args:
#	pull_request_id - 
#	pull_request_status - 
#
#>
######################################################################
p6_aws_codecommit_pull_request_status_update() {
    local pull_request_id="$1"
    local pull_request_status="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-pull-request-status --pull-request-id $pull_request_id --pull-request-status $pull_request_status "$@"
}