######################################################################
#<
#
# Function:
#      = p6_aws_s3control_jobs_list(account_id)
#
# Arg(s):
#    account_id - 
#
#
#>
######################################################################
p6_aws_s3control_jobs_list() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws s3control list-jobs --account-id $account_id "$@"
}