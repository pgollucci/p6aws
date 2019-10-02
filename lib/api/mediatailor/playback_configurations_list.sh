######################################################################
#<
#
# Function:
#	p6_aws_mediatailor_playback_configurations_list()
#
#>
######################################################################
p6_aws_mediatailor_playback_configurations_list() {

    p6_run_read_cmd aws mediatailor list-playback-configurations "$@"
}