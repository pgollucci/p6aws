p6_aws_organizations_organizational_unit_update() {
    local organizational_unit_id="$1"
    shift 1

    p6_log_or_run aws organizations update-organizational-unit --organizational-unit-id $organizational_unit_id "$@"
}
