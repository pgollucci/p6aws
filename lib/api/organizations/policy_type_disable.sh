######################################################################
#<
#
# Function:
#	p6_aws_organizations_policy_type_disable(root_id, policy_type)
#
#  Args:
#	root_id - 
#	policy_type - 
#
#>
######################################################################
p6_aws_organizations_policy_type_disable() {
    local root_id="$1"
    local policy_type="$2"
    shift 2

    p6_run_write_cmd aws organizations disable-policy-type --root-id $root_id --policy-type $policy_type "$@"
}