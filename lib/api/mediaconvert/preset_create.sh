######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_preset_create(name, settings)
#
# Arg(s):
#    name - 
#    settings - 
#
#
#>
######################################################################
p6_aws_mediaconvert_preset_create() {
    local name="$1"
    local settings="$2"
    shift 2

    p6_run_write_cmd aws mediaconvert create-preset --name $name --settings $settings "$@"
}