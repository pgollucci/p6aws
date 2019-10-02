######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_job_templates_list()
#
#>
######################################################################
p6_aws_mediaconvert_job_templates_list() {

    p6_run_read_cmd aws mediaconvert list-job-templates "$@"
}