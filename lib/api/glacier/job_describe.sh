######################################################################
#<
#
# Function:
#      = p6_aws_glacier_job_describe(account_id, vault_name, job_id)
#
# Arg(s):
#    account_id - 
#    vault_name - 
#    job_id - 
#
#
#>
######################################################################
p6_aws_glacier_job_describe() {
    local account_id="$1"
    local vault_name="$2"
    local job_id="$3"
    shift 3

    p6_run_read_cmd aws glacier describe-job --account-id $account_id --vault-name $vault_name --job-id $job_id "$@"
}