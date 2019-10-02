######################################################################
#<
#
# Function:
#	p6_aws_batch_job_definitions_describe()
#
#>
######################################################################
p6_aws_batch_job_definitions_describe() {

    p6_run_read_cmd aws batch describe-job-definitions "$@"
}