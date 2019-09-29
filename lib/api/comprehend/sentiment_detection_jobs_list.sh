######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_sentiment_detection_jobs_list()
#
#
#
#>
######################################################################
p6_aws_comprehend_sentiment_detection_jobs_list() {

    p6_run_read_cmd aws comprehend list-sentiment-detection-jobs "$@"
}