######################################################################
#<
#
# Function:
#	p6_aws_lex_models_builtin_intents_get()
#
#>
######################################################################
p6_aws_lex_models_builtin_intents_get() {

    p6_run_read_cmd aws lex-models get-builtin-intents "$@"
}