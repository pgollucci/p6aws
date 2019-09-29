######################################################################
#<
#
# Function:
#      = p6_aws_cloudtrail_subscription_create()
#
#
#
#>
######################################################################
p6_aws_cloudtrail_subscription_create() {

    p6_run_write_cmd aws cloudtrail create-subscription "$@"
}