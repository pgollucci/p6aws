######################################################################
#<
#
# Function:
#	p6_aws_codecommit_comment_for_pull_request_post(pull_request_id, repository_name, before_commit_id, after_commit_id, content)
#
#  Args:
#	pull_request_id - 
#	repository_name - 
#	before_commit_id - 
#	after_commit_id - 
#	content - 
#
#>
######################################################################
p6_aws_codecommit_comment_for_pull_request_post() {
    local pull_request_id="$1"
    local repository_name="$2"
    local before_commit_id="$3"
    local after_commit_id="$4"
    local content="$5"
    shift 5

    p6_run_write_cmd aws codecommit post-comment-for-pull-request --pull-request-id $pull_request_id --repository-name $repository_name --before-commit-id $before_commit_id --after-commit-id $after_commit_id --content $content "$@"
}