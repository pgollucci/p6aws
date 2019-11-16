######################################################################
#<
#
# Function: p6_aws_template_process(infile)
#
#  Args:
#	infile - 
#
#>
######################################################################
p6_aws_template_process() {
    local infile="$1"
    shift 1

    p6_template_process "$P6_DFZ_SRC_P6M7G8_DIR/p6aws/tmpl/$infile" "$@"
}