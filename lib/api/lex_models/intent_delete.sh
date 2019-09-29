######################################################################
#<
#
# Function:
#      = p6_aws_lex_models_intent_delete(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_lex_models_intent_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models delete-intent --name $name "$@"
}