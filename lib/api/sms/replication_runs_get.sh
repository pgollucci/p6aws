######################################################################
#<
#
# Function:
#      = p6_aws_sms_replication_runs_get(replication_job_id)
#
# Arg(s):
#    replication_job_id - 
#
#
#>
######################################################################
p6_aws_sms_replication_runs_get() {
    local replication_job_id="$1"
    shift 1

    p6_run_read_cmd aws sms get-replication-runs --replication-job-id $replication_job_id "$@"
}