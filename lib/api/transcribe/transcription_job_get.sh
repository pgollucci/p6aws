p6_aws_transcribe_transcription_job_get() {
    local transcription_job_name="$1"
    shift 1

    p6_log_and_run aws transcribe get-transcription-job --transcription-job-name $transcription_job_name "$@"
}
