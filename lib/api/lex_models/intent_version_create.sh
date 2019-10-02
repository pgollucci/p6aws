######################################################################
#<
#
# Function:
#	p6_aws_lex_models_intent_version_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_lex_models_intent_version_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models create-intent-version --name $name "$@"
}