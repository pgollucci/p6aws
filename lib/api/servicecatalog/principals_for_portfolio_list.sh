p6_aws_servicecatalog_principals_for_portfolio_list() {
    local portfolio_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-principals-for-portfolio --portfolio-id $portfolio_id "$@"
}
