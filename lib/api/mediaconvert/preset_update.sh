######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_preset_update(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_mediaconvert_preset_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert update-preset --name $name "$@"
}