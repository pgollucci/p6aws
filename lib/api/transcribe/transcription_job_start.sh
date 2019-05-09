p6_aws_transcribe_transcription_job_start() {
    local transcription_job_name="$1"
    local language_code="$2"
    local media_format="$3"
    local media="$4"
    shift 4

    p6_log_or_run aws transcribe start-transcription-job --transcription-job-name $transcription_job_name --language-code $language_code --media-format $media_format --media $media "$@"
}
