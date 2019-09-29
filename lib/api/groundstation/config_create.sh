######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_config_create(config_data, name)
#
# Arg(s):
#    config_data - 
#    name - 
#
#
#>
######################################################################
p6_aws_groundstation_config_create() {
    local config_data="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws groundstation create-config --config-data $config_data --name $name "$@"
}