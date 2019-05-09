p6_aws_servicecatalog_portfolio_share_status_describe() {
    local portfolio_share_token="$1"
    shift 1

    p6_log_and_run aws servicecatalog describe-portfolio-share-status --portfolio-share-token $portfolio_share_token "$@"
}
