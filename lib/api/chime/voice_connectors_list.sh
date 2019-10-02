######################################################################
#<
#
# Function:
#	p6_aws_chime_voice_connectors_list()
#
#>
######################################################################
p6_aws_chime_voice_connectors_list() {

    p6_run_read_cmd aws chime list-voice-connectors "$@"
}