######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_untag(role_name, tag_keys)
#
# Arg(s):
#    role_name - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_iam_role_untag() {
    local role_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws iam untag-role --role-name $role_name --tag-keys $tag_keys "$@"
}