######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_dominant_language_detection_jobs_list()
#
#
#
#>
######################################################################
p6_aws_comprehend_dominant_language_detection_jobs_list() {

    p6_run_read_cmd aws comprehend list-dominant-language-detection-jobs "$@"
}