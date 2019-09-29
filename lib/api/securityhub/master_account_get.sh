######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_master_account_get()
#
#
#
#>
######################################################################
p6_aws_securityhub_master_account_get() {

    p6_run_read_cmd aws securityhub get-master-account "$@"
}