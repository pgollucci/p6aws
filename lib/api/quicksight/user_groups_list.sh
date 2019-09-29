######################################################################
#<
#
# Function:
#      = p6_aws_quicksight_user_groups_list(user_name, aws_account_id, namespace)
#
# Arg(s):
#    user_name - 
#    aws_account_id - 
#    namespace - 
#
#
#>
######################################################################
p6_aws_quicksight_user_groups_list() {
    local user_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_run_read_cmd aws quicksight list-user-groups --user-name $user_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}