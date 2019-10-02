######################################################################
#<
#
# Function:
#	p6_aws_kinesis_video_archived_media_hls_streaming_session_url_get()
#
#>
######################################################################
p6_aws_kinesis_video_archived_media_hls_streaming_session_url_get() {

    p6_run_read_cmd aws kinesis-video-archived-media get-hls-streaming-session-url "$@"
}