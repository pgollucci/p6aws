######################################################################
#<
#
# Function:
#	p6_aws_comprehend_syntax_detect(text, language_code)
#
#  Args:
#	text - 
#	language_code - 
#
#>
######################################################################
p6_aws_comprehend_syntax_detect() {
    local text="$1"
    local language_code="$2"
    shift 2

    p6_run_write_cmd aws comprehend detect-syntax --text $text --language-code $language_code "$@"
}