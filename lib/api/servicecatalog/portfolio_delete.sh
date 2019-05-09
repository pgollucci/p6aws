p6_aws_servicecatalog_portfolio_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws servicecatalog delete-portfolio --id $id "$@"
}
