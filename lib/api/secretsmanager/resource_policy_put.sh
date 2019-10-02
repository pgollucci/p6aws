######################################################################
#<
#
# Function:
#	p6_aws_secretsmanager_resource_policy_put(secret_id, resource_policy)
#
#  Args:
#	secret_id - 
#	resource_policy - 
#
#>
######################################################################
p6_aws_secretsmanager_resource_policy_put() {
    local secret_id="$1"
    local resource_policy="$2"
    shift 2

    p6_run_write_cmd aws secretsmanager put-resource-policy --secret-id $secret_id --resource-policy $resource_policy "$@"
}