######################################################################
#<
#
# Function:
#      = p6_aws_elastictranscoder_preset_create(name, container)
#
# Arg(s):
#    name - 
#    container - 
#
#
#>
######################################################################
p6_aws_elastictranscoder_preset_create() {
    local name="$1"
    local container="$2"
    shift 2

    p6_run_write_cmd aws elastictranscoder create-preset --name $name --container $container "$@"
}