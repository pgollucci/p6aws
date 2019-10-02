######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_gateway_groups_list()
#
#>
######################################################################
p6_aws_alexaforbusiness_gateway_groups_list() {

    p6_run_read_cmd aws alexaforbusiness list-gateway-groups "$@"
}