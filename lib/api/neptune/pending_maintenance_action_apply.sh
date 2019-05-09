p6_aws_neptune_pending_maintenance_action_apply() {
    local resource_identifier="$1"
    local apply_action="$2"
    local opt_in_type="$3"
    shift 3

    p6_run_write_cmd aws neptune apply-pending-maintenance-action --resource-identifier $resource_identifier --apply-action $apply_action --opt-in-type $opt_in_type "$@"
}
