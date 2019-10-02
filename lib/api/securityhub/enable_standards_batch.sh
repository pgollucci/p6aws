######################################################################
#<
#
# Function:
#	p6_aws_securityhub_enable_standards_batch(standards_subscription_requests)
#
#  Args:
#	standards_subscription_requests - 
#
#>
######################################################################
p6_aws_securityhub_enable_standards_batch() {
    local standards_subscription_requests="$1"
    shift 1

    p6_run_write_cmd aws securityhub batch-enable-standards --standards-subscription-requests $standards_subscription_requests "$@"
}