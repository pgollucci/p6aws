######################################################################
#<
#
# Function:
#	p6_aws_redshift_snapshot_access_authorize(snapshot_identifier, account_with_restore_access)
#
#  Args:
#	snapshot_identifier - 
#	account_with_restore_access - 
#
#>
######################################################################
p6_aws_redshift_snapshot_access_authorize() {
    local snapshot_identifier="$1"
    local account_with_restore_access="$2"
    shift 2

    p6_run_write_cmd aws redshift authorize-snapshot-access --snapshot-identifier $snapshot_identifier --account-with-restore-access $account_with_restore_access "$@"
}