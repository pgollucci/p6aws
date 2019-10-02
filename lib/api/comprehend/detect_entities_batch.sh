######################################################################
#<
#
# Function:
#	p6_aws_comprehend_detect_entities_batch(text_list, language_code)
#
#  Args:
#	text_list - 
#	language_code - 
#
#>
######################################################################
p6_aws_comprehend_detect_entities_batch() {
    local text_list="$1"
    local language_code="$2"
    shift 2

    p6_run_write_cmd aws comprehend batch-detect-entities --text-list $text_list --language-code $language_code "$@"
}