######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_virtual_interfaces_describe()
#
#
#
#>
######################################################################
p6_aws_directconnect_virtual_interfaces_describe() {

    p6_run_read_cmd aws directconnect describe-virtual-interfaces "$@"
}