######################################################################
#<
#
# Function:
#	p6_aws_lex_models_intent_version_delete(name, intent_version)
#
#  Args:
#	name - 
#	intent_version - 
#
#>
######################################################################
p6_aws_lex_models_intent_version_delete() {
    local name="$1"
    local intent_version="$2"
    shift 2

    p6_run_write_cmd aws lex-models delete-intent-version --name $name --intent-version $intent_version "$@"
}