p6_aws_lex_models_slot_type_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws lex-models delete-slot-type --name $name "$@"
}
