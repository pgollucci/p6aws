######################################################################
#<
#
# Function:
#      = p6_aws_backup_restore_job_describe(restore_job_id)
#
# Arg(s):
#    restore_job_id - 
#
#
#>
######################################################################
p6_aws_backup_restore_job_describe() {
    local restore_job_id="$1"
    shift 1

    p6_run_read_cmd aws backup describe-restore-job --restore-job-id $restore_job_id "$@"
}