######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_detect_dominant_language_batch(text_list)
#
# Arg(s):
#    text_list - 
#
#
#>
######################################################################
p6_aws_comprehend_detect_dominant_language_batch() {
    local text_list="$1"
    shift 1

    p6_run_write_cmd aws comprehend batch-detect-dominant-language --text-list $text_list "$@"
}