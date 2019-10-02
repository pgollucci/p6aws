######################################################################
#<
#
# Function:
#	p6_aws_worklink_for_end_user_location(fleet_arn)
#
#  Args:
#	fleet_arn - 
#
#>
######################################################################
p6_aws_worklink_for_end_user_location() {
        local fleet_arn="$1"
        shift 1

    cond_log_and_run aws worklink update-fleet-metadata --fleet-arn $fleet_arn --optimize-for-end-user-location "$@"
}