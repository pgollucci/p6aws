######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_access_logging_start(container_name)
#
# Arg(s):
#    container_name - 
#
#
#>
######################################################################
p6_aws_mediastore_access_logging_start() {
    local container_name="$1"
    shift 1

    p6_run_write_cmd aws mediastore start-access-logging --container-name $container_name "$@"
}