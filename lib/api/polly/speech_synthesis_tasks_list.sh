######################################################################
#<
#
# Function:
#      = p6_aws_polly_speech_synthesis_tasks_list()
#
#
#
#>
######################################################################
p6_aws_polly_speech_synthesis_tasks_list() {

    p6_run_read_cmd aws polly list-speech-synthesis-tasks "$@"
}