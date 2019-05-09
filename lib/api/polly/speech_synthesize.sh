p6_aws_polly_speech_synthesize() {
    local output_format="$1"
    local text="$2"
    local voice_id="$3"
    shift 3

    p6_run_write_cmd aws polly synthesize-speech --output-format $output_format --text $text --voice-id $voice_id "$@"
}
