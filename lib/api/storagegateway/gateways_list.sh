######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_gateways_list()
#
#
#
#>
######################################################################
p6_aws_storagegateway_gateways_list() {

    p6_run_read_cmd aws storagegateway list-gateways "$@"
}