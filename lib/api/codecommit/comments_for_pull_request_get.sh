######################################################################
#<
#
# Function:
#	p6_aws_codecommit_comments_for_pull_request_get(pull_request_id)
#
#  Args:
#	pull_request_id - 
#
#>
######################################################################
p6_aws_codecommit_comments_for_pull_request_get() {
    local pull_request_id="$1"
    shift 1

    p6_run_read_cmd aws codecommit get-comments-for-pull-request --pull-request-id $pull_request_id "$@"
}