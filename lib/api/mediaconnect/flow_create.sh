######################################################################
#<
#
# Function:
#      = p6_aws_mediaconnect_flow_create(name, source)
#
# Arg(s):
#    name - 
#    source - 
#
#
#>
######################################################################
p6_aws_mediaconnect_flow_create() {
    local name="$1"
    local source="$2"
    shift 2

    p6_run_write_cmd aws mediaconnect create-flow --name $name --source $source "$@"
}