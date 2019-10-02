######################################################################
#<
#
# Function:
#	p6_aws_mediastore_container_policy_put(container_name, policy)
#
#  Args:
#	container_name - 
#	policy - 
#
#>
######################################################################
p6_aws_mediastore_container_policy_put() {
    local container_name="$1"
    local policy="$2"
    shift 2

    p6_run_write_cmd aws mediastore put-container-policy --container-name $container_name --policy $policy "$@"
}