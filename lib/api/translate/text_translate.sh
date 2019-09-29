######################################################################
#<
#
# Function:
#      = p6_aws_translate_text_translate(text, source_language_code, target_language_code)
#
# Arg(s):
#    text - 
#    source_language_code - 
#    target_language_code - 
#
#
#>
######################################################################
p6_aws_translate_text_translate() {
    local text="$1"
    local source_language_code="$2"
    local target_language_code="$3"
    shift 3

    p6_run_write_cmd aws translate translate-text --text $text --source-language-code $source_language_code --target-language-code $target_language_code "$@"
}