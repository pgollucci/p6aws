######################################################################
#<
#
# Function:
#	p6_aws_dlm_lifecycle_policy_create(execution_role_arn, description, state, policy_details)
#
#  Args:
#	execution_role_arn - 
#	description - 
#	state - 
#	policy_details - 
#
#>
######################################################################
p6_aws_dlm_lifecycle_policy_create() {
    local execution_role_arn="$1"
    local description="$2"
    local state="$3"
    local policy_details="$4"
    shift 4

    p6_run_write_cmd aws dlm create-lifecycle-policy --execution-role-arn $execution_role_arn --description $description --state $state --policy-details $policy_details "$@"
}