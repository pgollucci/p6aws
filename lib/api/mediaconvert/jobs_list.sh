######################################################################
#<
#
# Function:
#	p6_aws_mediaconvert_jobs_list()
#
#>
######################################################################
p6_aws_mediaconvert_jobs_list() {

    p6_run_read_cmd aws mediaconvert list-jobs "$@"
}