######################################################################
#<
#
# Function:
#	p6_aws_servicediscovery_operations_list()
#
#>
######################################################################
p6_aws_servicediscovery_operations_list() {

    p6_run_read_cmd aws servicediscovery list-operations "$@"
}