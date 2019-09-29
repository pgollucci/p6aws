######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_container_policy_get(container_name)
#
# Arg(s):
#    container_name - 
#
#
#>
######################################################################
p6_aws_mediastore_container_policy_get() {
    local container_name="$1"
    shift 1

    p6_run_read_cmd aws mediastore get-container-policy --container-name $container_name "$@"
}