######################################################################
#<
#
# Function:
#      = p6_aws_appstream_fleet_disassociate(fleet_name, stack_name)
#
# Arg(s):
#    fleet_name - 
#    stack_name - 
#
#
#>
######################################################################
p6_aws_appstream_fleet_disassociate() {
    local fleet_name="$1"
    local stack_name="$2"
    shift 2

    p6_run_write_cmd aws appstream disassociate-fleet --fleet-name $fleet_name --stack-name $stack_name "$@"
}