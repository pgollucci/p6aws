######################################################################
#<
#
# Function:
#	p6_aws_fms_admin_account_associate(admin_account)
#
#  Args:
#	admin_account - 
#
#>
######################################################################
p6_aws_fms_admin_account_associate() {
    local admin_account="$1"
    shift 1

    p6_run_write_cmd aws fms associate-admin-account --admin-account $admin_account "$@"
}