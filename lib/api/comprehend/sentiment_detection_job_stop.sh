######################################################################
#<
#
# Function:
#	p6_aws_comprehend_sentiment_detection_job_stop(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_comprehend_sentiment_detection_job_stop() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws comprehend stop-sentiment-detection-job --job-id $job_id "$@"
}