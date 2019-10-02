######################################################################
#<
#
# Function:
#	p6_aws_sms_replication_jobs_get()
#
#>
######################################################################
p6_aws_sms_replication_jobs_get() {

    p6_run_read_cmd aws sms get-replication-jobs "$@"
}