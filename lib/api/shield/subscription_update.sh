######################################################################
#<
#
# Function:
#	p6_aws_shield_subscription_update()
#
#>
######################################################################
p6_aws_shield_subscription_update() {

    p6_run_write_cmd aws shield update-subscription "$@"
}