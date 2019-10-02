######################################################################
#<
#
# Function:
#	p6_aws_rekognition_content_moderation_start(video)
#
#  Args:
#	video - 
#
#>
######################################################################
p6_aws_rekognition_content_moderation_start() {
    local video="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-content-moderation --video $video "$@"
}