######################################################################
#<
#
# Function:
#      = p6_aws_transcribe_transcription_jobs_list()
#
#
#
#>
######################################################################
p6_aws_transcribe_transcription_jobs_list() {

    p6_run_read_cmd aws transcribe list-transcription-jobs "$@"
}