######################################################################
#<
#
# Function:
#	p6_aws_servicecatalog_principal_with_portfolio_associate(portfolio_id, principal_arn, principal_type)
#
#  Args:
#	portfolio_id - 
#	principal_arn - 
#	principal_type - 
#
#>
######################################################################
p6_aws_servicecatalog_principal_with_portfolio_associate() {
    local portfolio_id="$1"
    local principal_arn="$2"
    local principal_type="$3"
    shift 3

    p6_run_write_cmd aws servicecatalog associate-principal-with-portfolio --portfolio-id $portfolio_id --principal-arn $principal_arn --principal-type $principal_type "$@"
}