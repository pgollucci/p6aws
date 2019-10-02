######################################################################
#<
#
# Function:
#	p6_aws_transcribe_transcription_job_get(transcription_job_name)
#
#  Args:
#	transcription_job_name - 
#
#>
######################################################################
p6_aws_transcribe_transcription_job_get() {
    local transcription_job_name="$1"
    shift 1

    p6_run_read_cmd aws transcribe get-transcription-job --transcription-job-name $transcription_job_name "$@"
}