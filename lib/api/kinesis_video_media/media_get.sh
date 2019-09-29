######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_video_media_media_get(start_selector)
#
# Arg(s):
#    start_selector - 
#
#
#>
######################################################################
p6_aws_kinesis_video_media_media_get() {
    local start_selector="$1"
    shift 1

    p6_run_read_cmd aws kinesis-video-media get-media --start-selector $start_selector "$@"
}