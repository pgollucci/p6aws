p6_aws_polly_speech_synthesis_task_start() {
    local output_format="$1"
    local output_s3_bucket_name="$2"
    local text="$3"
    local voice_id="$4"
    shift 4

    p6_log_or_run aws polly start-speech-synthesis-task --output-format $output_format --output-s3-bucket-name $output_s3_bucket_name --text $text --voice-id $voice_id "$@"
}
