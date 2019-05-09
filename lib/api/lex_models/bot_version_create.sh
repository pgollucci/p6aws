p6_aws_lex_models_bot_version_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models create-bot-version --name $name "$@"
}
