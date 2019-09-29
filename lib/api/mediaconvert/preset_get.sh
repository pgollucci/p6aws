######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_preset_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_mediaconvert_preset_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws mediaconvert get-preset --name $name "$@"
}