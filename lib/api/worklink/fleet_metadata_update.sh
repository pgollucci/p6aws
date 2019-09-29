######################################################################
#<
#
# Function:
#      = p6_aws_worklink_fleet_metadata_update(fleet_arn)
#
# Arg(s):
#    fleet_arn - 
#
#
#>
######################################################################
p6_aws_worklink_fleet_metadata_update() {
    local fleet_arn="$1"
    shift 1

    p6_run_write_cmd aws worklink update-fleet-metadata --fleet-arn $fleet_arn "$@"
}