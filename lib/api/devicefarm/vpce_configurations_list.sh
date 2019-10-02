######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_vpce_configurations_list()
#
#>
######################################################################
p6_aws_devicefarm_vpce_configurations_list() {

    p6_run_read_cmd aws devicefarm list-vpce-configurations "$@"
}