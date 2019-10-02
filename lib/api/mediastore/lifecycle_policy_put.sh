######################################################################
#<
#
# Function:
#	p6_aws_mediastore_lifecycle_policy_put(container_name, lifecycle_policy)
#
#  Args:
#	container_name - 
#	lifecycle_policy - 
#
#>
######################################################################
p6_aws_mediastore_lifecycle_policy_put() {
    local container_name="$1"
    local lifecycle_policy="$2"
    shift 2

    p6_run_write_cmd aws mediastore put-lifecycle-policy --container-name $container_name --lifecycle-policy $lifecycle_policy "$@"
}