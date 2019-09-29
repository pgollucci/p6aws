######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_container_create(container_name)
#
# Arg(s):
#    container_name - 
#
#
#>
######################################################################
p6_aws_mediastore_container_create() {
    local container_name="$1"
    shift 1

    p6_run_write_cmd aws mediastore create-container --container-name $container_name "$@"
}