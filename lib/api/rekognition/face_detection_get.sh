######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_face_detection_get(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_rekognition_face_detection_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-face-detection --job-id $job_id "$@"
}