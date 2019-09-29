######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_face_search_get(job_id)
#
# Arg(s):
#    job_id - 
#
#
#>
######################################################################
p6_aws_rekognition_face_search_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-face-search --job-id $job_id "$@"
}