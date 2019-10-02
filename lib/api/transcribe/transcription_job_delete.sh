######################################################################
#<
#
# Function:
#	p6_aws_transcribe_transcription_job_delete(transcription_job_name)
#
#  Args:
#	transcription_job_name - 
#
#>
######################################################################
p6_aws_transcribe_transcription_job_delete() {
    local transcription_job_name="$1"
    shift 1

    p6_run_write_cmd aws transcribe delete-transcription-job --transcription-job-name $transcription_job_name "$@"
}