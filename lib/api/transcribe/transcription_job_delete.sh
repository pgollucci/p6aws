p6_aws_transcribe_transcription_job_delete() {
    local transcription_job_name="$1"
    shift 1

    p6_log_or_run aws transcribe delete-transcription-job --transcription-job-name $transcription_job_name "$@"
}
