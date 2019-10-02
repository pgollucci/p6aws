######################################################################
#<
#
# Function:
#	p6_aws_comprehendmedical_phi_detect(text)
#
#  Args:
#	text - 
#
#>
######################################################################
p6_aws_comprehendmedical_phi_detect() {
    local text="$1"
    shift 1

    p6_run_write_cmd aws comprehendmedical detect-phi --text $text "$@"
}