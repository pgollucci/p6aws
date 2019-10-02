######################################################################
#<
#
# Function:
#	p6_aws_comprehend_entities_detection_jobs_list()
#
#>
######################################################################
p6_aws_comprehend_entities_detection_jobs_list() {

    p6_run_read_cmd aws comprehend list-entities-detection-jobs "$@"
}