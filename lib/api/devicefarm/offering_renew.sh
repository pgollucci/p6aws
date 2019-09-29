######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_offering_renew()
#
#
#
#>
######################################################################
p6_aws_devicefarm_offering_renew() {

    p6_run_write_cmd aws devicefarm renew-offering "$@"
}