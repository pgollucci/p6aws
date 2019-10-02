######################################################################
#<
#
# Function:
#	p6_aws_rds_pending_maintenance_actions_describe()
#
#>
######################################################################
p6_aws_rds_pending_maintenance_actions_describe() {

    p6_run_read_cmd aws rds describe-pending-maintenance-actions "$@"
}