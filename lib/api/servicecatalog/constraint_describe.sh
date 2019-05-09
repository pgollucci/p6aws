p6_aws_servicecatalog_constraint_describe() {
    local id="$1"
    shift 1

    p6_log_and_run aws servicecatalog describe-constraint --id $id "$@"
}
