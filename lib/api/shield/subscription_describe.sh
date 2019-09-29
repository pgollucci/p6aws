######################################################################
#<
#
# Function:
#      = p6_aws_shield_subscription_describe()
#
#
#
#>
######################################################################
p6_aws_shield_subscription_describe() {

    p6_run_read_cmd aws shield describe-subscription "$@"
}