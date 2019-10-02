######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_constraints_for_portfolio_list(portfolio_id)
#
#  Args:
#	portfolio_id - 
#
#>
######################################################################
p6_aws_servicecatalog_constraints_for_portfolio_list() {
    local portfolio_id="$1"
    shift 1

    p6_run_read_cmd aws servicecatalog list-constraints-for-portfolio --portfolio-id $portfolio_id "$@"
}