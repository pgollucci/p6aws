######################################################################
#<
#
# Function:
#      = p6_aws_codecommit_comment_update(comment_id, content)
#
# Arg(s):
#    comment_id - 
#    content - 
#
#
#>
######################################################################
p6_aws_codecommit_comment_update() {
    local comment_id="$1"
    local content="$2"
    shift 2

    p6_run_write_cmd aws codecommit update-comment --comment-id $comment_id --content $content "$@"
}