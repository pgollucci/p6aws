######################################################################
#<
#
# Function:
#	p6_aws_quicksight_group_create(group_name, aws_account_id, namespace)
#
#  Args:
#	group_name - 
#	aws_account_id - 
#	namespace - 
#
#>
######################################################################
p6_aws_quicksight_group_create() {
    local group_name="$1"
    local aws_account_id="$2"
    local namespace="$3"
    shift 3

    p6_run_write_cmd aws quicksight create-group --group-name $group_name --aws-account-id $aws_account_id --namespace $namespace "$@"
}