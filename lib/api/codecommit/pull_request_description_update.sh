######################################################################
#<
#
# Function:
#	p6_aws_codecommit_pull_request_description_update(pull_request_id, description)
#
#  Args:
#	pull_request_id - 
#	description - 
#
#>
######################################################################
p6_aws_codecommit_pull_request_description_update() {
    local pull_request_id="$1"
    local description="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-pull-request-description --pull-request-id $pull_request_id --description $description "$@"
}