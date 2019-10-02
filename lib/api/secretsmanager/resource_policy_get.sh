######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_resource_policy_get(secret_id)
#
#  Args:
#	secret_id - 
#
#>
######################################################################
p6_aws_secretsmanager_resource_policy_get() {
    local secret_id="$1"
    shift 1

    p6_run_read_cmd aws secretsmanager get-resource-policy --secret-id $secret_id "$@"
}