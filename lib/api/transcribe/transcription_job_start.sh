######################################################################
#<
#
# Function:
#      = p6_aws_transcribe_transcription_job_start(transcription_job_name, language_code, media_format, media)
#
# Arg(s):
#    transcription_job_name - 
#    language_code - 
#    media_format - 
#    media - 
#
#
#>
######################################################################
p6_aws_transcribe_transcription_job_start() {
    local transcription_job_name="$1"
    local language_code="$2"
    local media_format="$3"
    local media="$4"
    shift 4

    p6_run_write_cmd aws transcribe start-transcription-job --transcription-job-name $transcription_job_name --language-code $language_code --media-format $media_format --media $media "$@"
}