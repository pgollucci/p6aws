######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_get(role_name)
#
# Arg(s):
#    role_name - 
#
#
#>
######################################################################
p6_aws_iam_role_get() {
    local role_name="$1"
    shift 1

    p6_run_read_cmd aws iam get-role --role-name $role_name "$@"
}