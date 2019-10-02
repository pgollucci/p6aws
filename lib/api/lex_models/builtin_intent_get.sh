######################################################################
#<
#
# Function:
#	p6_aws_lex_models_builtin_intent_get(signature)
#
#  Args:
#	signature - 
#
#>
######################################################################
p6_aws_lex_models_builtin_intent_get() {
    local signature="$1"
    shift 1

    p6_run_read_cmd aws lex-models get-builtin-intent --signature $signature "$@"
}