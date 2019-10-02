######################################################################
#<
#
# Function:
#	p6_aws_iam_user_untag(user_name, tag_keys)
#
#  Args:
#	user_name - 
#	tag_keys - 
#
#>
######################################################################
p6_aws_iam_user_untag() {
    local user_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws iam untag-user --user-name $user_name --tag-keys $tag_keys "$@"
}