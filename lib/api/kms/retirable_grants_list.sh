######################################################################
#<
#
# Function:
#	p6_aws_kms_retirable_grants_list(retiring_principal)
#
#  Args:
#	retiring_principal - 
#
#>
######################################################################
p6_aws_kms_retirable_grants_list() {
    local retiring_principal="$1"
    shift 1

    p6_run_read_cmd aws kms list-retirable-grants --retiring-principal $retiring_principal "$@"
}