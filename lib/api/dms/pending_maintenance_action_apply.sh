######################################################################
#<
#
# Function:
#      = p6_aws_dms_pending_maintenance_action_apply(replication_instance_arn, apply_action, opt_in_type)
#
# Arg(s):
#    replication_instance_arn - 
#    apply_action - 
#    opt_in_type - 
#
#
#>
######################################################################
p6_aws_dms_pending_maintenance_action_apply() {
    local replication_instance_arn="$1"
    local apply_action="$2"
    local opt_in_type="$3"
    shift 3

    p6_run_write_cmd aws dms apply-pending-maintenance-action --replication-instance-arn $replication_instance_arn --apply-action $apply_action --opt-in-type $opt_in_type "$@"
}