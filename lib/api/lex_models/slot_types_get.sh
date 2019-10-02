######################################################################
#<
#
# Function:
#	p6_aws_lex_models_slot_types_get()
#
#>
######################################################################
p6_aws_lex_models_slot_types_get() {

    p6_run_read_cmd aws lex-models get-slot-types "$@"
}