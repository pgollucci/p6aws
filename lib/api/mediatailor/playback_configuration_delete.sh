######################################################################
#<
#
# Function:
#	p6_aws_mediatailor_playback_configuration_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_mediatailor_playback_configuration_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediatailor delete-playback-configuration --name $name "$@"
}