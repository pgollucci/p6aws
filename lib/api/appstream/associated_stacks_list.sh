######################################################################
#<
#
# Function:
#      = p6_aws_appstream_associated_stacks_list(fleet_name)
#
# Arg(s):
#    fleet_name - 
#
#
#>
######################################################################
p6_aws_appstream_associated_stacks_list() {
    local fleet_name="$1"
    shift 1

    p6_run_read_cmd aws appstream list-associated-stacks --fleet-name $fleet_name "$@"
}