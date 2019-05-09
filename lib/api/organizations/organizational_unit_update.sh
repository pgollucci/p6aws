p6_aws_organizations_organizational_unit_update() {
    local organizational_unit_id="$1"
    shift 1

    p6_run_write_cmd aws organizations update-organizational-unit --organizational-unit-id $organizational_unit_id "$@"
}
