######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_offering_transactions_list()
#
#
#
#>
######################################################################
p6_aws_devicefarm_offering_transactions_list() {

    p6_run_read_cmd aws devicefarm list-offering-transactions "$@"
}