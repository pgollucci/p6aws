######################################################################
#<
#
# Function:
#	p6_aws_rekognition_celebrity_recognition_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_rekognition_celebrity_recognition_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-celebrity-recognition --job-id $job_id "$@"
}