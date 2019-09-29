######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_from_master_account_disassociate()
#
#
#
#>
######################################################################
p6_aws_securityhub_from_master_account_disassociate() {

    p6_run_write_cmd aws securityhub disassociate-from-master-account "$@"
}