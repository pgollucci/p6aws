######################################################################
#<
#
# Function:
#      = p6_aws_rekognition_label_detection_start(video)
#
# Arg(s):
#    video - 
#
#
#>
######################################################################
p6_aws_rekognition_label_detection_start() {
    local video="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-label-detection --video $video "$@"
}