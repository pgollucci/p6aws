######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_account_limits_describe()
#
#>
######################################################################
p6_aws_autoscaling_account_limits_describe() {

    p6_run_read_cmd aws autoscaling describe-account-limits "$@"
}