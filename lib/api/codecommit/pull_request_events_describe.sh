######################################################################
#<
#
# Function:
#	p6_aws_codecommit_pull_request_events_describe(pull_request_id)
#
#  Args:
#	pull_request_id - 
#
#>
######################################################################
p6_aws_codecommit_pull_request_events_describe() {
    local pull_request_id="$1"
    shift 1

    p6_run_read_cmd aws codecommit describe-pull-request-events --pull-request-id $pull_request_id "$@"
}