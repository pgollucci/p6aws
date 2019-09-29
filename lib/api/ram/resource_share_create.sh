######################################################################
#<
#
# Function:
#      = p6_aws_ram_resource_share_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_ram_resource_share_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws ram create-resource-share --name $name "$@"
}