######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_policy_put(role_name, policy_name, policy_document)
#
# Arg(s):
#    role_name - 
#    policy_name - 
#    policy_document - 
#
#
#>
######################################################################
p6_aws_iam_role_policy_put() {
    local role_name="$1"
    local policy_name="$2"
    local policy_document="$3"
    shift 3

    p6_run_write_cmd aws iam put-role-policy --role-name $role_name --policy-name $policy_name --policy-document $policy_document "$@"
}