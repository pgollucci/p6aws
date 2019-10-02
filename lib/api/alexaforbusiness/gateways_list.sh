######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_gateways_list()
#
#>
######################################################################
p6_aws_alexaforbusiness_gateways_list() {

    p6_run_read_cmd aws alexaforbusiness list-gateways "$@"
}