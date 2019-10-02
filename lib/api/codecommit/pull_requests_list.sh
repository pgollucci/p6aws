######################################################################
#<
#
# Function:
#	p6_aws_codecommit_pull_requests_list(repository_name)
#
#  Args:
#	repository_name - 
#
#>
######################################################################
p6_aws_codecommit_pull_requests_list() {
    local repository_name="$1"
    shift 1

    p6_run_read_cmd aws codecommit list-pull-requests --repository-name $repository_name "$@"
}