######################################################################
#<
#
# Function:
#      = p6_aws_shield_subscription_create()
#
#
#
#>
######################################################################
p6_aws_shield_subscription_create() {

    p6_run_write_cmd aws shield create-subscription "$@"
}