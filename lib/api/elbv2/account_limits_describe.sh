######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_account_limits_describe()
#
#
#
#>
######################################################################
p6_aws_elbv2_account_limits_describe() {

    p6_run_read_cmd aws elbv2 describe-account-limits "$@"
}