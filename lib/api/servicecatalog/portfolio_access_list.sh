######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_portfolio_access_list(portfolio_id)
#
#  Args:
#	portfolio_id - 
#
#>
######################################################################
p6_aws_servicecatalog_portfolio_access_list() {
    local portfolio_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-portfolio-access --portfolio-id $portfolio_id "$@"
}