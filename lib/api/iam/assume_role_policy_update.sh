######################################################################
#<
#
# Function:
#      = p6_aws_iam_assume_role_policy_update(role_name, policy_document)
#
# Arg(s):
#    role_name - 
#    policy_document - 
#
#
#>
######################################################################
p6_aws_iam_assume_role_policy_update() {
    local role_name="$1"
    local policy_document="$2"
    shift 2

    p6_run_write_cmd aws iam update-assume-role-policy --role-name $role_name --policy-document $policy_document "$@"
}