######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_job_describe(backup_job_id)
#
#  Args:
#	backup_job_id - 
#
#>
######################################################################
p6_aws_backup_backup_job_describe() {
    local backup_job_id="$1"
    shift 1

    p6_run_read_cmd aws backup describe-backup-job --backup-job-id $backup_job_id "$@"
}