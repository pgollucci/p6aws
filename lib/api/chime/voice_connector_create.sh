######################################################################
#<
#
# Function:
#      = p6_aws_chime_voice_connector_create(name, require_encryption)
#
# Arg(s):
#    name - 
#    require_encryption - 
#
#
#>
######################################################################
p6_aws_chime_voice_connector_create() {
    local name="$1"
    local require_encryption="$2"
    shift 2

    p6_run_write_cmd aws chime create-voice-connector --name $name --require-encryption $require_encryption "$@"
}