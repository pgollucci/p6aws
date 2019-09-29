######################################################################
#<
#
# Function:
#      = p6_aws_comprehend_sentiment_detect(text, language_code)
#
# Arg(s):
#    text - 
#    language_code - 
#
#
#>
######################################################################
p6_aws_comprehend_sentiment_detect() {
    local text="$1"
    local language_code="$2"
    shift 2

    p6_run_write_cmd aws comprehend detect-sentiment --text $text --language-code $language_code "$@"
}