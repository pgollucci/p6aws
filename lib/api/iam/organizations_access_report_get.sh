######################################################################
#<
#
# Function:
#	p6_aws_iam_organizations_access_report_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_iam_organizations_access_report_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws iam get-organizations-access-report --job-id $job_id "$@"
}