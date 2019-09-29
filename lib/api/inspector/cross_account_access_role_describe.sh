######################################################################
#<
#
# Function:
#      = p6_aws_inspector_cross_account_access_role_describe()
#
#
#
#>
######################################################################
p6_aws_inspector_cross_account_access_role_describe() {

    p6_run_read_cmd aws inspector describe-cross-account-access-role "$@"
}