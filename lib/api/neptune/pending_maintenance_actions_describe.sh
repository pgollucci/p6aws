######################################################################
#<
#
# Function:
#      = p6_aws_neptune_pending_maintenance_actions_describe()
#
#
#
#>
######################################################################
p6_aws_neptune_pending_maintenance_actions_describe() {

    p6_run_read_cmd aws neptune describe-pending-maintenance-actions "$@"
}