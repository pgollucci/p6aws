######################################################################
#<
#
# Function:
#	p6_aws_lex_models_intent_put(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_lex_models_intent_put() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models put-intent --name $name "$@"
}