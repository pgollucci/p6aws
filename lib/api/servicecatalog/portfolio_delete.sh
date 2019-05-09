p6_aws_servicecatalog_portfolio_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws servicecatalog delete-portfolio --id $id "$@"
}
