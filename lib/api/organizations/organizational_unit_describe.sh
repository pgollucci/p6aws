p6_aws_organizations_organizational_unit_describe() {
    local organizational_unit_id="$1"
    shift 1

    p6_log_and_run aws organizations describe-organizational-unit --organizational-unit-id $organizational_unit_id "$@"
}
