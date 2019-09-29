######################################################################
#<
#
# Function:
#      = p6_aws_snowball_job_create()
#
#
#
#>
######################################################################
p6_aws_snowball_job_create() {

    p6_run_write_cmd aws snowball create-job "$@"
}