######################################################################
#<
#
# Function:
#	p6_aws_codecommit_comment_content_delete(comment_id)
#
#  Args:
#	comment_id - 
#
#>
######################################################################
p6_aws_codecommit_comment_content_delete() {
    local comment_id="$1"
    shift 1

    p6_run_write_cmd aws codecommit delete-comment-content --comment-id $comment_id "$@"
}