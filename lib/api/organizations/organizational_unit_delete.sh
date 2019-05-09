p6_aws_organizations_organizational_unit_delete() {
    local organizational_unit_id="$1"
    shift 1

    p6_run_write_cmd aws organizations delete-organizational-unit --organizational-unit-id $organizational_unit_id "$@"
}
