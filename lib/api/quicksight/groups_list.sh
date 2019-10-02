######################################################################
#<
#
# Function:
#	p6_aws_quicksight_groups_list(aws_account_id, namespace)
#
#  Args:
#	aws_account_id - 
#	namespace - 
#
#>
######################################################################
p6_aws_quicksight_groups_list() {
    local aws_account_id="$1"
    local namespace="$2"
    shift 2

    p6_run_read_cmd aws quicksight list-groups --aws-account-id $aws_account_id --namespace $namespace "$@"
}