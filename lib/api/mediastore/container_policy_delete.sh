######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_container_policy_delete(container_name)
#
# Arg(s):
#    container_name - 
#
#
#>
######################################################################
p6_aws_mediastore_container_policy_delete() {
    local container_name="$1"
    shift 1

    p6_run_write_cmd aws mediastore delete-container-policy --container-name $container_name "$@"
}