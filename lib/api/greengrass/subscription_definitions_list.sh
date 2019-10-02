######################################################################
#<
#
# Function:
#	p6_aws_greengrass_subscription_definitions_list()
#
#>
######################################################################
p6_aws_greengrass_subscription_definitions_list() {

    p6_run_read_cmd aws greengrass list-subscription-definitions "$@"
}