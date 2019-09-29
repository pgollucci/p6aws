######################################################################
#<
#
# Function:
#      = p6_aws_backup_restore_jobs_list()
#
#
#
#>
######################################################################
p6_aws_backup_restore_jobs_list() {

    p6_run_read_cmd aws backup list-restore-jobs "$@"
}