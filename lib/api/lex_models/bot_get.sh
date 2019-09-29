######################################################################
#<
#
# Function:
#      = p6_aws_lex_models_bot_get(name, version_or_alias)
#
# Arg(s):
#    name - 
#    version_or_alias - 
#
#
#>
######################################################################
p6_aws_lex_models_bot_get() {
    local name="$1"
    local version_or_alias="$2"
    shift 2

    p6_run_read_cmd aws lex-models get-bot --name $name --version-or-alias $version_or_alias "$@"
}