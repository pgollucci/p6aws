######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_key_phrases_detection_job_stop(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_comprehend_key_phrases_detection_job_stop() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws comprehend stop-key-phrases-detection-job --job-id $job_id "$@"
}