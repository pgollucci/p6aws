######################################################################
#<
#
# Function:
#      = p6_aws_discovery_server_neighbors_list(configuration_id)
#
# Arg(s):
#    configuration_id - 
#
#
#>
######################################################################
p6_aws_discovery_server_neighbors_list() {
    local configuration_id="$1"
    shift 1

    p6_run_read_cmd aws discovery list-server-neighbors --configuration-id $configuration_id "$@"
}