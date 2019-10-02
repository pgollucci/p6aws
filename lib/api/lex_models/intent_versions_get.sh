######################################################################
#<
#
# Function:
#	p6_aws_lex_models_intent_versions_get(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_lex_models_intent_versions_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws lex-models get-intent-versions --name $name "$@"
}