######################################################################
#<
#
# Function:
#	p6_aws_codecommit_pull_request_title_update(pull_request_id, title)
#
#  Args:
#	pull_request_id - 
#	title - 
#
#>
######################################################################
p6_aws_codecommit_pull_request_title_update() {
    local pull_request_id="$1"
    local title="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-pull-request-title --pull-request-id $pull_request_id --title $title "$@"
}