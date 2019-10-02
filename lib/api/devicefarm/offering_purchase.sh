######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_offering_purchase()
#
#>
######################################################################
p6_aws_devicefarm_offering_purchase() {

    p6_run_write_cmd aws devicefarm purchase-offering "$@"
}