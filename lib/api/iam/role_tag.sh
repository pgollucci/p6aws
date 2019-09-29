######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_tag(role_name, tags)
#
# Arg(s):
#    role_name - 
#    tags - 
#
#
#>
######################################################################
p6_aws_iam_role_tag() {
    local role_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws iam tag-role --role-name $role_name --tags $tags "$@"
}