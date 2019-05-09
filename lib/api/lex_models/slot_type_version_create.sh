p6_aws_lex_models_slot_type_version_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws lex-models create-slot-type-version --name $name "$@"
}
