######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_create(role_name, assume_role_policy_document)
#
# Arg(s):
#    role_name - 
#    assume_role_policy_document - 
#
#
#>
######################################################################
p6_aws_iam_role_create() {
    local role_name="$1"
    local assume_role_policy_document="$2"
    shift 2

    p6_run_write_cmd aws iam create-role --role-name $role_name --assume-role-policy-document $assume_role_policy_document "$@"
}