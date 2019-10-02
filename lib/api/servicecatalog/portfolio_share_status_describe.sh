######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_portfolio_share_status_describe(portfolio_share_token)
#
#  Args:
#	portfolio_share_token - 
#
#>
######################################################################
p6_aws_servicecatalog_portfolio_share_status_describe() {
    local portfolio_share_token="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog describe-portfolio-share-status --portfolio-share-token $portfolio_share_token "$@"
}