######################################################################
#<
#
# Function:
#	p6_aws_quicksight_group_membership_delete(member_name, group_name, aws_account_id, namespace)
#
#  Args:
#	member_name - 
#	group_name - 
#	aws_account_id - 
#	namespace - 
#
#>
######################################################################
p6_aws_quicksight_group_membership_delete() {
    local member_name="$1"
    local group_name="$2"
    local aws_account_id="$3"
    local namespace="$4"
    shift 4

    p6_run_write_cmd aws quicksight delete-group-membership --member-name $member_name --group-name $group_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}