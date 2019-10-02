######################################################################
#<
#
# Function:
#	p6_aws_comprehend_dominant_language_detect(text)
#
#  Args:
#	text - 
#
#>
######################################################################
p6_aws_comprehend_dominant_language_detect() {
    local text="$1"
    shift 1

    p6_run_write_cmd aws comprehend detect-dominant-language --text $text "$@"
}