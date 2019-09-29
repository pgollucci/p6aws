######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_offering_promotions_list()
#
#
#
#>
######################################################################
p6_aws_devicefarm_offering_promotions_list() {

    p6_run_read_cmd aws devicefarm list-offering-promotions "$@"
}