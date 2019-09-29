######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_person_tracking_start(video)
#
# Arg(s):
#    video - 
#
#
#>
######################################################################
p6_aws_rekognition_person_tracking_start() {
    local video="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-person-tracking --video $video "$@"
}