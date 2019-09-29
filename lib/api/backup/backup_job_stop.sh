######################################################################
#<
#
# Function:
#      = p6_aws_backup_backup_job_stop(backup_job_id)
#
# Arg(s):
#    backup_job_id - 
#
#
#>
######################################################################
p6_aws_backup_backup_job_stop() {
    local backup_job_id="$1"
    shift 1

    p6_run_write_cmd aws backup stop-backup-job --backup-job-id $backup_job_id "$@"
}