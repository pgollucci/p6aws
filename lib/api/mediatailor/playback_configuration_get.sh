######################################################################
#<
#
# Function:
#	p6_aws_mediatailor_playback_configuration_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_mediatailor_playback_configuration_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws mediatailor get-playback-configuration --name $name "$@"
}